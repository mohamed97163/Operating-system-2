import 'package:archfolio/view/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController? email;
  TextEditingController? password;
  GlobalKey<FormState> inputlogin = GlobalKey<FormState>();
  bool isshowpassword = false;

  showpassword() {
    isshowpassword = isshowpassword == false ? true : false;
    update();
  }

  validatorPassword(String value) {
    if (((value.length < 8) && (value.length > 0)) || value.length > 15) {
      return "Your password is invalid";
    } else if (value.isEmpty) {
      return "Please enter your password";
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

  goToSuccsesPage() {
    if (inputlogin.currentState!.validate()) {
      Get.off(() => HomePage());
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }
}
