import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ReceieveScreen extends StatefulWidget {
  const ReceieveScreen({super.key});

  @override
  State<ReceieveScreen> createState() => _ReceieveScreenState();
}

class _ReceieveScreenState extends State<ReceieveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text(
                  "Recieve TAC",
                  style: pSemiBold18.copyWith(
                    fontSize: 24,
                  ),
                ),
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        height: 248,
                        width: 248,
                        decoration: const BoxDecoration(
                          color: ConstColors.whiteColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            DefaultImages.p17,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: ConstColors.whiteColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Your TAC Address",
                                  style: pSemiBold20.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: Text(
                                  "sf98qs6f928f01wjidiqsu0a9ycs0q8yd91\ntwowhOCYA",
                                  style: pRegular14.copyWith(
                                    fontSize: 16,
                                    color: const Color(0xff9EA3AE),
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 56,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(28),
                                        color: const Color(0xffF2F2F7),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: SvgPicture.asset(
                                              DefaultImages.p3,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          const SizedBox(width: 14),
                                          Text(
                                            "Copy",
                                            style: pSemiBold20.copyWith(
                                              fontSize: 17,
                                              color: const Color(0xff9EA3AE),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Expanded(
                                    child: Container(
                                      height: 56,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(28),
                                        color: const Color(0xffF2F2F7),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: SvgPicture.asset(
                                              DefaultImages.p16,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          const SizedBox(width: 14),
                                          Text(
                                            "Share",
                                            style: pSemiBold20.copyWith(
                                              fontSize: 17,
                                              color: const Color(0xff9EA3AE),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  )
                ],
              ),
            ),
            CustomButton(
              text: "Next",
              color: ConstColors.primaryColor,
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
