import 'package:currency/config/colors.dart';
import 'package:currency/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/app_strings.dart';
import '../../controller/onboarding_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final onboardingController = Get.put(OnboardingController());
  final splashController = Get.put(SplashController());

  @override
  void initState() {
    splashController.customInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/payeebuddy.jpg' , height: 200),
            SizedBox(height: 20,),
            Text(
              AppStrings.title,
               style: GoogleFonts.ubuntu(
                fontSize: 50,
                fontWeight: FontWeight.w500,
                color: ConstColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
