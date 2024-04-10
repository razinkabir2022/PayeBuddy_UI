import 'package:currency/config/colors.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/tab_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).padding.top + 15),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const CircleAvatar(
                              radius: 18,
                              backgroundColor: ConstColors.whiteColor,
                              child: Icon(
                                Icons.arrow_back,
                                color: ConstColors.fontColor,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Enter verification code",
                        style: pSemiBold20.copyWith(
                          fontSize: 26,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Enter 4-digit code the we just send to your phone number: ",
                        style: pRegular14.copyWith(
                          fontSize: 14,
                          color: ConstColors.lightTextColor,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "phone number: ",
                            style: pRegular14.copyWith(
                              fontSize: 14,
                              color: ConstColors.lightTextColor,
                              height: 1.4,
                            ),
                          ),
                          Text(
                            "+880 175456446",
                            style: pRegular14.copyWith(
                              fontSize: 14,
                              color: ConstColors.primaryColor,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Pinput(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        defaultPinTheme: PinTheme(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: ConstColors.greyColor.withOpacity(0.2),
                            ),
                          ),
                          textStyle: pSemiBold20.copyWith(
                            fontSize: 24,
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          height: 64,
                          width: 64,
                          textStyle: pSemiBold20.copyWith(
                            fontSize: 24,
                            color: ConstColors.whiteColor,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ConstColors.primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  CustomButton(
                    text: "Continue",
                    color: ConstColors.primaryColor,
                    onTap: () {
                      Get.offAll(
                        const TabScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Resend Code",
                    color: ConstColors.whiteColor,
                    onTap: () {},
                    textColor: ConstColors.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
