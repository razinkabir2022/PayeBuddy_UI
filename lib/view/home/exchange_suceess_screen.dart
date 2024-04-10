import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExchangeSucessScreen extends StatefulWidget {
  const ExchangeSucessScreen({super.key});

  @override
  State<ExchangeSucessScreen> createState() => _ExchangeSucessScreenState();
}

class _ExchangeSucessScreenState extends State<ExchangeSucessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                height: 140,
                width: 140,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      DefaultImages.e1,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Exchange Complete",
                  style: pSemiBold20.copyWith(
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  "Your exchange has  been completed.\nYou exchanged \$16,641.20 BTC to ETH.",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                    color: const Color(0xff9EA3AE),
                    height: 1.6,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 182,
                width: Get.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      DefaultImages.e2,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: "Go to Home",
                color: ConstColors.primaryColor,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
