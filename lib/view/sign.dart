import 'package:archfolio/controller/signcontroller.dart';
import 'package:archfolio/view/login.dart';
import 'package:archfolio/view/widget/TextTab.dart';
import 'package:archfolio/view/widget/buttomAuthpage.dart';
import 'package:archfolio/view/widget/dividerAuthpage.dart';
import 'package:archfolio/view/widget/textformfieldAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignController());
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text(
              "Create Account",
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w500,
                  fontSize: 6.w,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Container(
              width: 55.w,
              child: Text(
                "Fill your information below or register with your social account",
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.w500,
                    fontSize: 3.5.w,
                    color: Color.fromRGBO(139, 139, 139, 1)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22, left: 22),
            child: GetBuilder<SignController>(
              builder: (controller) => Form(
                key: controller.inputlogin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w500,
                          fontSize: 3.5.w,
                          color: Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1.w),
                      height: 8.h,
                      child: TextFormFieldAuthPage(
                          controller: controller.username,
                          hinttext: "Name",
                          hiddentext: false,
                          validator: (value) {
                            return controller.validatorName(value!);
                          }),
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w500,
                          fontSize: 3.5.w,
                          color: Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1.w),
                      height: 8.h,
                      child: TextFormFieldAuthPage(
                          controller: controller.email,
                          hinttext: "Email Address",
                          hiddentext: false,
                          validator: (value) {
                            return controller.validatorEmail(value!);
                          }),
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w500,
                          fontSize: 3.5.w,
                          color: Colors.black),
                    ),
                    GetBuilder<SignController>(
                      builder: (controller) => Container(
                        margin: EdgeInsets.only(top: 1.w),
                        height: 8.h,
                        child: TextFormFieldAuthPage(
                            controller: controller.password,
                            hinttext: "Password",
                            hiddentext: controller.isshowpassword == false
                                ? true
                                : false,
                            validator: (value) {
                              return controller.validatorPassword(value!);
                            },
                            icon: Icons.remove_red_eye_rounded,
                            onpressed: () {
                              controller.showpassword();
                            },
                            coloricon: controller.isshowpassword == false
                                ? Colors.grey
                                : Colors.red),
                      ),
                    ),
                    Text(
                      "Confirm Password",
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w500,
                          fontSize: 3.5.w,
                          color: Colors.black),
                    ),
                    GetBuilder<SignController>(
                      builder: (controller) => Container(
                        margin: EdgeInsets.only(top: 1.w),
                        height: 8.h,
                        child: TextFormFieldAuthPage(
                            controller: controller.confirmpassword,
                            hinttext: "Confirm Password",
                            hiddentext: controller.isshowpasswordtwo == false
                                ? true
                                : false,
                            validator: (value) {
                              return controller
                                  .validatorConfirmPassword(value!);
                            },
                            icon: Icons.remove_red_eye_rounded,
                            onpressed: () {
                              controller.showpasswordTwo();
                            },
                            coloricon: controller.isshowpasswordtwo == false
                                ? Colors.grey
                                : Colors.red),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            side: BorderSide(
                                color: Color.fromRGBO(153, 108, 76, 1)),
                            checkColor: Colors.white,
                            activeColor: Color.fromRGBO(153, 108, 76, 1),
                            value: controller.value,
                            onChanged: (val) {
                              controller.changeVal(val);
                            }),
                        Text(
                          "Agree with ",
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 3.w,
                              fontWeight: FontWeight.w500),
                        ),
                        TextTap(
                            color: Color.fromRGBO(153, 108, 76, 1),
                            fontsize: 3.w,
                            fontweight: FontWeight.w500,
                            text: "Terms & Condition",
                            onTap: () {}),
                      ],
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    GetBuilder<SignController>(
                      builder: (controller) => ButtomAuthPage(
                          text: "Sign Up",
                          colorbottom: Color.fromRGBO(153, 108, 76, 1),
                          colortext: Colors.white,
                          bordercolor: Color.fromRGBO(153, 108, 76, 1),
                          fontsize: 5.w,
                          onPressed: () {
                            controller.goToSuccsesPage();
                          }),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DividerAuthPage(
                          width: 20.w,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "Or sign up with",
                          style: GoogleFonts.inter(
                              color: Color.fromRGBO(196, 195, 195, 1),
                              fontSize: 3.w,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        DividerAuthPage(
                          width: 20.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 3.h),
                        width: 50.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color.fromRGBO(221, 221, 221, 1))),
                              child: Icon(
                                Icons.apple,
                                size: 8.w,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(3.w),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(221, 221, 221, 1))),
                                child: Image.asset(
                                  "lib/images/google.png",
                                  width: 8.w,
                                )),
                            Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color.fromRGBO(221, 221, 221, 1))),
                              child: Icon(
                                Icons.facebook_outlined,
                                size: 8.w,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ? ",
                          style: GoogleFonts.inter(
                              color: Colors.black.withOpacity(.4),
                              fontSize: 3.5.w,
                              fontWeight: FontWeight.w600),
                        ),
                        TextTap(
                            color: Color.fromRGBO(153, 108, 76, 1),
                            fontsize: 3.w,
                            fontweight: FontWeight.bold,
                            text: "Log in",
                            onTap: () {
                              Get.off(() => LoginPage());
                            }),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
