import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pruduct_management_app/res/utils.dart';

class AuthService extends GetxService {
  // Firebase Authentication instance for managing user authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // GoogleSignIn instance for managing Google sign-in
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Register a new user with email and password
  Future<void> registerUserWithEmailPassword(String email, String password, BuildContext context) async {
    try {
      // Create a new user using Firebase Authentication
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Retrieve the user object from the credentials
      User? user = userCredential.user;

      // Check if the user is successfully created
      if (user != null) {
        // Additional logic for saving user data can be added here
      }

    } catch (e) {
      // Show error message if registration fails
      Utils.showSnackBar(context, 'Error ::: ${e.toString()}', Colors.red);
    }
  }

  // Log in an existing user with email and password
  Future<void> loginUserWithEmailPassword(String email, String password, BuildContext context) async {
    try {
      // Sign in using Firebase Authentication
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
       Utils.showSnackBar(context, 'Error ::: ${e.toString()}', Colors.red);
    }
  }

  // Log out the current user
  Future<void> logout(BuildContext context) async {
    // Sign out from Google account
    await _googleSignIn.signOut();

    // Sign out from Facebook account
    await FacebookAuth.instance.logOut();

    // Sign out from Firebase Authentication
    await _auth.signOut();
  }

  // Log in using Google account
  Future<void> loginWithGoogle(BuildContext context) async {
    try {
      // Trigger Google sign-in flow
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // Show error message if the user cancels Google sign-in
        Utils.showSnackBar(context, 'Error ::: user null', Colors.red);
        return;
      }

      // Retrieve the authentication details from Google
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Validate the access token and ID token
      if (googleAuth.accessToken == null) {
        Utils.showSnackBar(context, 'Google auth failed', Colors.red);
        return;
      }

      // Create a credential for Firebase Authentication using Google tokens
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase using the Google credentials
      if (credential != null) {
        await _auth.signInWithCredential(credential);
      }
    } on FirebaseAuthException catch (e) {
      // Handle specific Firebase exceptions
      Utils.showSnackBar(context, 'Error while Google sign-in ::: ${e.toString()}', Colors.red);
    } catch (e) {
      // Handle unexpected errors
      Utils.showSnackBar(context, 'Unexpected error ::: ${e.toString()}', Colors.red);
    }
  }

  // Log in using Facebook account
  Future<void> loginWithFacebook(BuildContext context) async {
    // Trigger Facebook login flow
    final LoginResult result = await FacebookAuth.instance.login();

    // Check if the login was successful
    if (result.status == LoginStatus.success) {
      // Retrieve the Facebook access token
      final AccessToken accessToken = result.accessToken!;

      // Create a credential for Firebase Authentication using the Facebook token
      final OAuthCredential credential = FacebookAuthProvider.credential(accessToken.tokenString);

      // Sign in to Firebase using the Facebook credentials
      if (credential != null) {
        await _auth.signInWithCredential(credential);
      }
    }
  }
}
