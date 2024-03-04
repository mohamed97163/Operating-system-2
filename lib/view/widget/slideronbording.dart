import 'package:archfolio/controller/onbordingcontroller.dart';
import 'package:archfolio/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class SliderOnboarding extends StatelessWidget {
  const SliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController mycontroller = Get.put(OnboardingController());
    return PageView.builder(
      onPageChanged: (val) {
        mycontroller.changepage(val);
      },
      controller: mycontroller.pageController,
      itemCount: onbordinglist.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Container(
                padding: EdgeInsets.only(
                  right: 6.w,
                  left: 6.w,
                ),
                height: 40.h,
                width: double.infinity,
                child:
                    Image.asset("${onbordinglist[i].image}", fit: BoxFit.fill)),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 6.w, left: 6.w),
              child: Text(
                "${onbordinglist[i].body}",
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 5.w,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      },
    );
  }
}
