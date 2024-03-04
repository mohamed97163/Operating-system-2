import 'package:archfolio/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class MainAuth extends StatelessWidget {
  const MainAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              height: 2.h,
            ),
            Container(
              child: Text(
                "ArchFolio",
                style: TextStyle(
                    fontSize: 6.5.w,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(111, 112, 112, 1)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(153, 108, 76, 1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 80.w,
              height: 6.h,
              margin: EdgeInsets.only(top: 5.h),
              child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Continue as Architect",
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.bold,
                        fontSize: 4.w,
                        color: Colors.white),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(153, 108, 76, 1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 80.w,
              height: 6.h,
              margin: EdgeInsets.only(top: 3.h),
              child: MaterialButton(
                  onPressed: () {
                    Get.off(() => LoginPage());
                  },
                  child: Text(
                    "Continue as User",
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.bold,
                        fontSize: 4.w,
                        color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
