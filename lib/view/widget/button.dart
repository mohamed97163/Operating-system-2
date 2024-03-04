import 'package:archfolio/controller/onbordingcontroller.dart';
import 'package:archfolio/view/mainAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class ButtonOnboarding extends StatelessWidget {
  const ButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController mycontroller = Get.put(OnboardingController());
    return GetBuilder<OnboardingController>(
      builder: (controller) => controller.currentpage != 2
          ? Container(
              margin: EdgeInsets.only(right: 3.6.w, left: 3.6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        mycontroller.changepage(2);
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 4.w,
                            color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {
                        mycontroller.next();
                      },
                      child: Text(
                        "Next",
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 4.w,
                            color: Colors.black),
                      )),
                ],
              ),
            )
          : Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(153, 108, 76, 1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 80.w,
              margin: const EdgeInsets.only(bottom: 20, top: 20),
              child: MaterialButton(
                  onPressed: () {
                    mycontroller.currentpage != 2
                        ? mycontroller.next()
                        : Get.to(() =>MainAuth());
                  },
                  child: Text(
                    "Get Statrted",
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.bold,
                        fontSize: 4.w,
                        color: Colors.white),
                  )),
            ),
    );
  }
}
