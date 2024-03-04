import 'package:archfolio/controller/logincontroller.dart';
import 'package:archfolio/view/HomePage.dart';
import 'package:archfolio/view/forget.dart';
import 'package:archfolio/view/sign.dart';
import 'package:archfolio/view/widget/TextTab.dart';
import 'package:archfolio/view/widget/buttomAuthpage.dart';
import 'package:archfolio/view/widget/dividerAuthpage.dart';
import 'package:archfolio/view/widget/textformfieldAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController mycontroller = Get.put(LoginController());
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text(
              "Log in",
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
              width: 45.w,
              child: Text(
                "Hi Welcome back , you 've been missed",
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.w500,
                    fontSize: 3.5.w,
                    color: Color.fromRGBO(139, 139, 139, 1)),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "lib/images/login.png",
              fit: BoxFit.fill,
              height: 30.h,
              width: 60.w,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22, left: 22),
            child: GetBuilder<LoginController>(
              builder: (controller) => Form(
                key: mycontroller.inputlogin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          controller: mycontroller.email,
                          hinttext: "Email Address",
                          hiddentext: false,
                          validator: (value) {
                            return mycontroller.validatorEmail(value!);
                          }),
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.w500,
                          fontSize: 3.5.w,
                          color: Colors.black),
                    ),
                    GetBuilder<LoginController>(
                      builder: (controller) => Container(
                        margin: EdgeInsets.only(top: 1.w),
                        height: 8.h,
                        child: TextFormFieldAuthPage(
                            controller: mycontroller.password,
                            hinttext: "Password",
                            hiddentext: mycontroller.isshowpassword == false
                                ? true
                                : false,
                            validator: (value) {
                              return mycontroller.validatorPassword(value!);
                            },
                            icon: Icons.remove_red_eye_rounded,
                            onpressed: () {
                              mycontroller.showpassword();
                            },
                            coloricon: mycontroller.isshowpassword == false
                                ? Colors.grey
                                : Colors.red),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextTap(
                            color: Color.fromRGBO(153, 108, 76, 1),
                            fontsize: 3.w,
                            fontweight: FontWeight.w500,
                            text: "Forget Password?",
                            onTap: () {
                              Get.to(() => ForgetPassPage());
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    GetBuilder<LoginController>(
                      builder: (controller) => ButtomAuthPage(
                          text: "Log in",
                          colorbottom: Color.fromRGBO(153, 108, 76, 1),
                          colortext: Colors.white,
                          bordercolor: Color.fromRGBO(153, 108, 76, 1),
                          fontsize: 5.w,
                          onPressed: () {
                            controller.goToSuccsesPage();
                          }),
                    ),
                    SizedBox(
                      height: 20,
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
                          "Or Log in with",
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
                      height: 3.w,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 2.h),
                        width: 50.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.off(() => HomePage());
                              },
                              child: Container(
                                padding: EdgeInsets.all(3.w),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(221, 221, 221, 1))),
                                child: Icon(
                                  Icons.apple,
                                  size: 8.w,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.off(() => HomePage());
                              },
                              child: Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color.fromRGBO(
                                              221, 221, 221, 1))),
                                  child: Image.asset(
                                    "lib/images/google.png",
                                    width: 8.w,
                                  )),
                            ),
                            InkWell(
                              onTap: () {
                                Get.off(() => HomePage());
                              },
                              child: Container(
                                padding: EdgeInsets.all(3.w),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(221, 221, 221, 1))),
                                child: Icon(
                                  Icons.facebook_outlined,
                                  size: 8.w,
                                  color: Colors.blue,
                                ),
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
                          "Dont have an account ? ",
                          style: GoogleFonts.inter(
                              color: Colors.black.withOpacity(.4),
                              fontSize: 3.5.w,
                              fontWeight: FontWeight.w600),
                        ),
                        TextTap(
                            color: Color.fromRGBO(153, 108, 76, 1),
                            fontsize: 3.w,
                            fontweight: FontWeight.bold,
                            text: "Sign Up",
                            onTap: () {
                              Get.off(() => SignUpPage());
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
