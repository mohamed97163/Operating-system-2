import 'package:archfolio/controller/resetpass.dart';
import 'package:archfolio/view/widget/buttomAuthpage.dart';
import 'package:archfolio/view/widget/textformfieldAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class ResetPassPage extends StatelessWidget {
  const ResetPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPassController());
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
                flex: 4,
                child: Text(
                  "Create new Password",
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
              width: 70.w,
              child: Text(
                "your new password must be different from previously used password.",
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
              "lib/images/newpass.png",
              fit: BoxFit.fill,
              height: 25.h,
              width: 80.w,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 22, left: 22, top: 5.h),
              child: GetBuilder<ResetPassController>(
                  builder: (controller) => Form(
                        key: controller.inputlogin,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: GoogleFonts.lora(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 3.5.w,
                                  color: Colors.black),
                            ),
                            GetBuilder<ResetPassController>(
                              builder: (controller) => Container(
                                margin: EdgeInsets.only(top: 1.w),
                                height: 8.h,
                                child: TextFormFieldAuthPage(
                                    controller: controller.password,
                                    hinttext: "Password",
                                    hiddentext:
                                        controller.isshowpassword == false
                                            ? true
                                            : false,
                                    validator: (value) {
                                      return controller
                                          .validatorPassword(value!);
                                    },
                                    icon: Icons.remove_red_eye_rounded,
                                    onpressed: () {
                                      controller.showpassword();
                                    },
                                    coloricon:
                                        controller.isshowpassword == false
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
                            GetBuilder<ResetPassController>(
                              builder: (controller) => Container(
                                margin: EdgeInsets.only(top: 1.w),
                                height: 8.h,
                                child: TextFormFieldAuthPage(
                                    controller: controller.confirmpassword,
                                    hinttext: "Confirm Password",
                                    hiddentext:
                                        controller.isshowpasswordtwo == false
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
                                    coloricon:
                                        controller.isshowpasswordtwo == false
                                            ? Colors.grey
                                            : Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ))),
          GetBuilder<ResetPassController>(
            builder: (controller) => Container(
              margin: EdgeInsets.only(right: 5.6.w, left: 5.6.w, top: 5.w),
              child: ButtomAuthPage(
                  text: "Send",
                  colorbottom: Color.fromRGBO(153, 108, 76, 1),
                  colortext: Colors.white,
                  bordercolor: Color.fromRGBO(153, 108, 76, 1),
                  fontsize: 5.w,
                  onPressed: () {
                    controller.goToLogin();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
