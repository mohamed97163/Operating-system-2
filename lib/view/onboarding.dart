import 'package:archfolio/controller/onbordingcontroller.dart';
import 'package:archfolio/view/widget/button.dart';
import 'package:archfolio/view/widget/sliderdotted.dart';
import 'package:archfolio/view/widget/slideronbording.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 6,
            ),
            SizedBox(height: 60.h, child: SliderOnboarding()),
            Container(
                margin: EdgeInsets.only(bottom: 5.h),
                height: 5.h,
                child: DotControllerOnboarding()),
            SizedBox(height: 12.h, child: ButtonOnboarding()),
          ],
        ),
      ),
    );
  }
}
