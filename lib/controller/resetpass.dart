import 'package:archfolio/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassController extends GetxController{
  GlobalKey<FormState> inputlogin = GlobalKey<FormState>();
 bool isshowpassword = false;
  bool isshowpasswordtwo = false;

  showpassword() {
    isshowpassword = isshowpassword == false ? true : false;

    update();
  }

  showpasswordTwo() {
    isshowpasswordtwo = isshowpasswordtwo == false ? true : false;

    update();
  }
 TextEditingController? password;
  TextEditingController? confirmpassword;
validatorPassword(String value) {
    if (value.length > 15) {
      return "Your password is big";
    } else if (value.length < 8) {
      return "The password is small";
    } else if (value.isEmpty) {
      return "Please enter your password";
    } else {
      return null;
    }
  }

  validatorConfirmPassword(String value) {
    if (value.length > 15) {
      return "Your password is big";
    } else if (value.isEmpty) {
      return "Please enter your password";
    } else if (value.length < 8) {
      return "The password is small";
    } else if (password!.text != confirmpassword!.text) {
      return "Password doesn't match";
    } else {
      return null;
    }
  }
  goToLogin(){
      if (inputlogin.currentState!.validate()) {
        Get.off(()=>LoginPage());
      }
  }
   @override
  void onInit() {
  
    password = TextEditingController();
   
    confirmpassword = TextEditingController();

    super.onInit();
  }
  
}