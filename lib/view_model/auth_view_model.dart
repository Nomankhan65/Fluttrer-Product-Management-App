import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pruduct_management_app/res/utils.dart';
import 'package:pruduct_management_app/view/login_screen.dart';
import 'package:pruduct_management_app/view/product_screen.dart';
import 'package:pruduct_management_app/view_model/services/auth_services.dart';

class AuthViewModel extends GetxController {
  final AuthService _authService = Get.find<AuthService>();
  RxBool loading = false.obs;
  RxBool loading1 = false.obs;
  RxBool loading2 = false.obs;
  RxBool loading3 = false.obs;
  var profile = Rx<File?>(null);


  // Register method
  Future register(String email, String password, BuildContext context) async {
    try {
      loading.value = true;
        await _authService.registerUserWithEmailPassword(email, password ,context).then((v){
        Utils.showSnackBar(
            context, 'User registered successfully', Colors.green);
        Navigator.pop(context);
      });
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(context,'Error ---- ${e.toString()}',Colors.red);
    } finally {
      loading.value = false;
    }
  }

  // Login method
  Future<void> login(String email, String password, BuildContext context) async {
    try {
      loading.value = true;
      await _authService.loginUserWithEmailPassword(email, password, context).then((v) {
        Utils.showSnackBar(context,'User login successfully',Colors.green);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));

      });

    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(context,'Error ---',Colors.red);
    } finally {
      loading.value = false;
    }
  }

  //login with google
  Future<void> loginWithGoogle(BuildContext context) async {
    try {
      loading1.value = true;
      await _authService.loginWithGoogle(context).then((v){
        Utils.showSnackBar(context,'Google login successfully',Colors.green);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      });
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(context,'Error --- ${e.toString()}',Colors.red);
    } catch (e) {
      Utils.showSnackBar(context,'Error --- ${e.toString()}',Colors.red);
    } finally {
      loading1.value = false;
    }
  }

  //facebook login
  Future<void> loginWithFacebook(BuildContext context) async {
    try {
      loading3.value = true;
        await _authService.loginWithFacebook(context).then((val){
          Utils.showSnackBar(context, 'Logged in with Facebook successfully', Colors.green);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
        });


    } on FirebaseAuthException catch (e) {
      loading3.value = false;
       Utils.showSnackBar(context, 'Error: ${e.message}', Colors.red);
       print('error :::${e.toString()}');
    } catch (e) {
      loading3.value = false;
       Utils.showSnackBar(context, 'Facebook sign-in failed : ${e.toString()}', Colors.red);
    } finally {
      loading3.value = false;
    }
  }

  // Logout user
  Future<void> logout(BuildContext context) async {
    try {
      loading.value = true;
      await _authService.logout(context); // Call the logout service
      Utils.showSnackBar(context, 'Logged out successfully', Colors.green);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>LoginScreen()));
    } catch (e) {
      Utils.showSnackBar(context, 'Error during logout: ${e.toString()}', Colors.red);
    } finally {
      loading.value = false;
    }
  }


}



