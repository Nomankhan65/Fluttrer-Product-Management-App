import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pruduct_management_app/res/dimentions.dart';
import 'package:pruduct_management_app/res/strings.dart';
 import '../res/app_colors.dart';
import '../res/components/custom_button.dart';
import '../res/components/custom_text.dart';
import '../res/components/custom_text_field.dart';
import '../view_model/auth_view_model.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
final AuthViewModel authController = Get.put(AuthViewModel());
   var email=TextEditingController();
  var password=TextEditingController();
   final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:MyText(text:Strings.signup,color:titleColor,),
        centerTitle:true,
      ),

      body:Form(
        key:formKey,
        child: Column(
          children: [
            CustomTextField(controller: email, label:Strings.email, hintText:Strings.enterEmail),
            CustomTextField(controller: password, label:Strings.password, hintText:Strings.enterPass),
             SizedBox(height:Dimensions.d2,),
            Obx(() {
              return CustomButton(
                title: Strings.signup,
                isLoading:authController.loading.value,  // Observing the loading state
                onTap: () async {
                  if(formKey.currentState!.validate()){
                    await authController.register(email.text, password.text,context);
                  }

                },
              );
            }),

            SizedBox(height:Dimensions.d2,),
            Row(mainAxisAlignment:MainAxisAlignment.center,
              children: [
                MyText(
                  text:Strings.register,
                ),TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child:MyText(
                  text:Strings.signin,
                  color:titleColor,
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
