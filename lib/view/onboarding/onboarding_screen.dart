import 'dart:async';

import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/controller/onboarding_controller.dart';
import 'package:currency/controller/splash_controller.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../auth/signup_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final splashController = Get.put(SplashController());
  OnboardingController onboardingController = Get.find();

  static final customCacheManager = CacheManager(
            Config(
              'customCacheKey',
              stalePeriod: const Duration(days: 7)
            )
          );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Obx(
              () =>splashController.skip.value < 4? Image(image: AssetImage("assets/images/Onboarding/o${splashController.skip.value+1}.png")):CircularProgressIndicator()),
              /* onboardingController.onboardingResList.isNotEmpty  && splashController.skip.value < 4 ? CachedNetworkImage(
                                imageUrl: onboardingController.onboardingResList[splashController.skip.value].img.toString(),
                                placeholder: (context, url) => const CircularProgressIndicator(),                              
                                errorWidget: (context, url, error) => const Icon(
                                    Icons.error,
                                    size: 100,
                                    color: Colors.red,
                                ),
                                cacheManager: customCacheManager,
                                imageBuilder: (context, imageProvider) => Container(
                                  width: Get.width,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),          
                              ) : CircularProgressIndicator(),*/
                             
            const SizedBox(height: 30),
            Obx(
              () => onboardingController.onboardingResList.isNotEmpty  && splashController.skip.value < 4 ? Text(               
                onboardingController.onboardingResList[splashController.skip.value].heading.toString(),
                style: pSemiBold20.copyWith(
                  fontSize: 36,
                ),
              ) : Text(" "),
            ),
            const SizedBox(height: 10),
            Obx(
              () => onboardingController.onboardingResList.isNotEmpty  && splashController.skip.value < 4 ? Text(               
                onboardingController.onboardingResList[splashController.skip.value].subHeading.toString()            ,
                style: pRegular14.copyWith(
                  fontSize: 16,
                  color: ConstColors.lightTextColor,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ) : Text(" "),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => splashController.skip.value == 0
                      ? Container(
                          height: 9,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ConstColors.primaryColor,
                          ),
                        )
                      : Container(
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ConstColors.greyColor.withOpacity(0.40),
                          ),
                        ),
                ),
                const SizedBox(width: 10),
                Obx(
                  () => splashController.skip.value == 1
                      ? Container(
                          height: 9,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ConstColors.primaryColor,
                          ),
                        )
                      : Container(
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ConstColors.greyColor.withOpacity(0.40),
                          ),
                        ),
                ),
                const SizedBox(width: 10),
                Obx(
                  () => splashController.skip.value == 2
                      ? Container(
                          height: 9,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ConstColors.primaryColor,
                          ),
                        )
                      : Container(
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ConstColors.greyColor.withOpacity(0.40),
                          ),
                        ),
                ),
                const SizedBox(width: 10,),
                Obx(
                  () => splashController.skip.value == 3
                      ? Container(
                          height: 9,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ConstColors.primaryColor,
                          ),
                        )
                      : Container(
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ConstColors.greyColor.withOpacity(0.40),
                          ),
                        ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Next",
              color: ConstColors.primaryColor,
              onTap: () {
                if(splashController.skip.value<3){
                  splashController.skip.value = splashController.skip.value + 1;
                }          
                if (splashController.skip.value == 3) {
                  Timer(Duration(milliseconds: 20), () { Get.to(
                    const SignupScreen(),
                    transition: Transition.rightToLeft,
                  );});
                  
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
