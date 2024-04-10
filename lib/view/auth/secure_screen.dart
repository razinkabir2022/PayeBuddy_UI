import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/auth/verification_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecureScreen extends StatefulWidget {
  const SecureScreen({super.key});

  @override
  State<SecureScreen> createState() => _SecureScreenState();
}

class _SecureScreenState extends State<SecureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
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
                const SizedBox(height: 50),
                Container(
                  height: 240,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        DefaultImages.secure,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Secure your account",
                  style: pSemiBold20.copyWith(
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "One way keep account secure with 2-step\nverification, which requires phone number.",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                    color: ConstColors.lightTextColor,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: CustomButton(
              text: "Continue",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.to(
                  const VerificationScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
