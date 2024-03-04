import 'package:archfolio/view/verify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetController extends GetxController{

  TextEditingController? email;
    GlobalKey<FormState> inputlogin = GlobalKey<FormState>();

 validatorEmail(String value) {
    if (!value.isEmail) {
      return "Your E-mail is invalid";
    } else if (value.isEmpty) {
      return "Please enter your E-mail";
    } else {
      return null;
    }
  }
   goToVerifyPage() {
    if (inputlogin.currentState!.validate()) {
      Get.off(() => VerifyPage());
    }
  }
 @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }
  
}