import 'package:archfolio/data/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class OnboardingController extends GetxController {
  int currentpage = 0;
  late PageController pageController;
  changepage(int index) {
    currentpage = index;
    update();
  }

  next() {
    if (currentpage > ((onbordinglist.length) - 2)) {
     
    } else {
      currentpage++;
      pageController.animateToPage(currentpage,
          duration: const Duration(
            milliseconds: 900,
          ),
          curve: Curves.easeInOut);
      update();
    }
  }

  back() {
    currentpage--;
    pageController.animateToPage(currentpage,
        duration: const Duration(
          milliseconds: 900,
        ),
        curve: Curves.easeInOut);
    update();
  }


  moveto(int index) {
    currentpage = index;
    pageController.animateToPage(currentpage,
        duration: const Duration(
          milliseconds: 900,
        ),
        curve: Curves.easeInOut);
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
