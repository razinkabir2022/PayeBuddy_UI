import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/auth/otp_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:currency/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
                        "Set up 2-step verification",
                        style: pSemiBold20.copyWith(
                          fontSize: 26,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Enter your phone number so we can send\nyou the verification code",
                        style: pRegular14.copyWith(
                          fontSize: 14,
                          color: ConstColors.lightTextColor,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Phone Number",
                          style: pSemiBold18.copyWith(
                            fontSize: 14,
                            color: ConstColors.primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomTextFieldWithPrefix(
                        text: "Phone number",
                        textEditingController:
                            TextEditingController(text: "5125870573"),
                        prefix: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: Get.width / 3.6,
                            child: Row(
                              children: [
                                Image.asset(
                                  DefaultImages.flag,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "+800",
                                  style: pRegular14.copyWith(
                                    fontSize: 15,
                                    color: ConstColors.greyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomButton(
                text: "Continue",
                color: ConstColors.primaryColor,
                onTap: () {
                  Get.to(
                    const OTPScreen(),
                    transition: Transition.rightToLeft,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
