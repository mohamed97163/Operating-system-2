import 'package:archfolio/controller/onbordingcontroller.dart';
import 'package:archfolio/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotControllerOnboarding extends StatelessWidget {
  const DotControllerOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return GetBuilder<OnboardingController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onbordinglist.length,
                (index) => controller.currentpage == index
                    ? Container(
                        margin: EdgeInsets.only(right: 7),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromRGBO(160, 118, 79, 1),
                            )),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Color.fromRGBO(160, 118, 79, 1),
                        ))
                    : InkWell(
                        onTap: () {
                          controller.moveto(index);
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 7),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Color.fromRGBO(196, 176, 154, 1),
                          ),
                        ),
                      ))
          ],
        ),
      ),
    );
  }
}
