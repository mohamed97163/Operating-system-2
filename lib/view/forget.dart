import 'package:archfolio/controller/forget.dart';
import 'package:archfolio/view/verify.dart';
import 'package:archfolio/view/widget/buttomAuthpage.dart';
import 'package:archfolio/view/widget/textformfieldAuth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetController());
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 6.w,
                      color: Color.fromRGBO(153, 108, 76, 1),
                    )),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Forget Password",
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w500,
                      fontSize: 6.w,
                      color: Colors.black),
                ),
              ),
              Spacer(
                flex: 1,
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.h),
              width: 60.w,
              child: Text(
                "Please enter your email address to receive a verification code.",
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
              "lib/images/forget.png",
              fit: BoxFit.fill,
              height: 35.h,
              width: 60.w,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 22, left: 22, top: 5.h),
              child: GetBuilder<ForgetController>(
                  builder: (controller) => Form(
                        key: controller.inputlogin,
                        child: Container(
                          margin: EdgeInsets.only(top: 1.w, bottom: 2.h),
                          height: 8.h,
                          child: TextFormFieldAuthPage(
                              controller: controller.email,
                              hinttext: "Email Address",
                              hiddentext: false,
                              validator: (value) {
                                return controller.validatorEmail(value!);
                              }),
                        ),
                      ))),
          GetBuilder<ForgetController>(
            builder: (controller) => Container(
              margin: EdgeInsets.only(right: 5.6.w, left: 5.6.w),
              child: ButtomAuthPage(
                  text: "Send",
                  colorbottom: Color.fromRGBO(153, 108, 76, 1),
                  colortext: Colors.white,
                  bordercolor: Color.fromRGBO(153, 108, 76, 1),
                  fontsize: 5.w,
                  onPressed: () {
                    controller.goToVerifyPage();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
