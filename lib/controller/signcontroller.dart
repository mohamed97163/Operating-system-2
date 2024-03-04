import 'package:archfolio/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignController extends GetxController {
  TextEditingController? email;
  TextEditingController? password;
  TextEditingController? confirmpassword;
  TextEditingController? username;
  bool value = false;
  changeVal(val) {
    value = val;
    update();
  }

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

  validatorEmail(String value) {
    if (!value.isEmail) {
      return "Your E-mail is invalid";
    } else if (value.isEmpty) {
      return "Please enter your E-mail";
    } else {
      return null;
    }
  }

  validatorName(String value) {
    if (value.length < 3) {
      return "Your Name is small";
    } else if (value.isEmpty) {
      return "Please enter your name";
    } else if (value.length > 25) {
      return "Your Name is big";
    } else {
      return null;
    }
  }

  goToSuccsesPage() {
    if (inputlogin.currentState!.validate()) {
      Get.off(()=>LoginPage());
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    confirmpassword = TextEditingController();

    super.onInit();
  }
}
