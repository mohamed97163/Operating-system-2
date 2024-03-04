import 'package:archfolio/controller/verify.dart';
import 'package:archfolio/view/resetpass.dart';
import 'package:archfolio/view/widget/buttomAuthpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyController());
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
                  "Verify your email",
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
                "Please enter the 5 digit code sent to jhon.doe@gmail.com",
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
              "lib/images/verify.png",
              fit: BoxFit.fill,
              height: 35.h,
              width: 60.w,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 22, left: 22, top: 5.h),
              child: GetBuilder<VerifyController>(
                  builder: (controller) => Form(
                        key: controller.inputlogin,
                        child: Container(
                          margin: EdgeInsets.only(top: 1.w, bottom: 2.h),
                          height: 8.h,
                          child: OtpTextField(
                            numberOfFields: 5,
                            borderColor: Colors.grey.shade400,
                            focusedBorderColor: Colors.grey.shade400,
                            showFieldAsBox: true,
                            borderWidth: 1,
                            fillColor: Colors.white,
                            filled: true,
                            borderRadius: BorderRadius.circular(30),
                            crossAxisAlignment: CrossAxisAlignment.center,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400))),
                            textStyle: GoogleFonts.inter(
                                fontSize: 3.5.w,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                        ),
                      ))),
          GetBuilder<VerifyController>(
            builder: (controller) => Container(
              margin: EdgeInsets.only(right: 5.6.w, left: 5.6.w, bottom: 5.w),
              child: ButtomAuthPage(
                  text: "Send",
                  colorbottom: Color.fromRGBO(153, 108, 76, 1),
                  colortext: Colors.white,
                  bordercolor: Color.fromRGBO(153, 108, 76, 1),
                  fontsize: 5.w,
                  onPressed: () {
                    Get.to(() => ResetPassPage());
                  }),
            ),
          ),
          Center(
            child: Text(
              "Resend code in 00:59",
              style: GoogleFonts.inter(
                  fontSize: 3.5.w,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
