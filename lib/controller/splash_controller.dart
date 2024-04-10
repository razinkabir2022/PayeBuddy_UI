import 'dart:async';

import 'package:currency/view/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxInt skip = 0.obs;
  customInit() {
    skip.value = 0;
    Timer(
      const Duration(seconds: 2),
      () {
        Get.to(
          const OnboardingScreen(),
          transition: Transition.rightToLeft,
        );
      },
    );
  }
  }




