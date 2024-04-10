import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/profile/card_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Container(
            height: AppBar().preferredSize.height,
            width: Get.width,
            decoration: const BoxDecoration(
              color: ConstColors.whiteColor,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: ConstColors.whiteColor,
                      child: Icon(
                        Icons.arrow_back,
                        color: ConstColors.fontColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: Get.width / 2,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    DefaultImages.p5,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              "Your Payment are Success",
              style: pSemiBold20.copyWith(
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              "Now you already have cryptocurrency in\nyour wallet",
              style: pRegular14.copyWith(
                fontSize: 16,
                color: const Color(0xff9EA3AE),
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CustomButton(
              text: "Check My Assets",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.to(
                  const CardScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
