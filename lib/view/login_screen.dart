import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pruduct_management_app/res/components/custom_button.dart';
import 'package:pruduct_management_app/res/strings.dart';
import 'package:pruduct_management_app/view/signup_screen.dart';

import '../res/app_colors.dart';
import '../res/components/custom_text.dart';
import '../res/components/custom_text_field.dart';
import '../view_model/auth_view_model.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final AuthViewModel authController = Get.put(AuthViewModel());
  var email = TextEditingController();
  var password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        title: MyText(
          text:Strings.signin,
          color: titleColor,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextField(
              controller: email,
              label: Strings.email,
              hintText: Strings.enterEmail,
              type: TextInputType.emailAddress,
            ),
            CustomTextField(
              controller: password,
              label: Strings.password,
              hintText: Strings.enterPass,
              type: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return CustomButton(
                  title: Strings.signin,
                  isLoading:authController.loading.value,
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      await authController.login(
                          email.text, password.text, context);
                    }
                  });
            }),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: Strings.account,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignupScreen()));
                  },
                  child: MyText(
                    text: Strings.signup,
                    color: titleColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return CustomButton(
                  title:Strings.google,
                  isLoading:authController.loading1.value,
                  onTap: () async {
                    await authController.loginWithGoogle(context);
                  });
            }),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return CustomButton(
                  title:Strings.facebook,
                  isLoading:authController.loading3.value,
                  onTap: () async {
                    await authController.loginWithFacebook(context);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
