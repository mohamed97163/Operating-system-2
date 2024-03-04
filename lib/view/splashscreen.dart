import 'package:archfolio/view/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    goto();
  }

  goto() async {
    await Future.delayed(
        Duration(
          milliseconds: 2000,
        ),
        () {});
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                OnBoardingScreens(),
            transitionDuration: Duration(milliseconds: 1500),
            transitionsBuilder: (context, animation, secondaryAnimation,
                    child) =>
                SlideTransition(
                  position: animation
                      .drive(Tween(begin: Offset(0, -1), end: Offset(0, 0))),
                  child: child,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(245, 225, 203, 1),
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 30.h,
              width: 35.w,
              child: Image.asset(
                "lib/images/logo.png",
                fit: BoxFit.fill,
              )),
          SizedBox(
            height: 3.h,
          ),
          Container(
              height: 4.h,
              width: 30.w,
              child: Image.asset(
                "lib/images/logo2.png",
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }
}
