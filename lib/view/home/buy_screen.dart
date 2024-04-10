import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Buy Bitcoin",
                  style: pSemiBold18.copyWith(
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        height: 142,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: ConstColors.whiteColor,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.2),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          DefaultImages.c3,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "US Dollar",
                                        style: pSemiBold18.copyWith(
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        "USD",
                                        style: pRegular14.copyWith(
                                          fontSize: 12,
                                          color: ConstColors.greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Text(
                                  "\$35,641.20|",
                                  style: pSemiBold18.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 56,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              DefaultImages.c5,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 142,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: ConstColors.whiteColor,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.2),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          DefaultImages.c4,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bitcoin",
                                        style: pSemiBold18.copyWith(
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        "BTC",
                                        style: pRegular14.copyWith(
                                          fontSize: 12,
                                          color: ConstColors.greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Text(
                                  "\$35,641.20|",
                                  style: pSemiBold18.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Text(
                            "A/C Balance: \$58,351",
                            style: pSemiBold18.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Container(
                            height: 28,
                            width: 92,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: ConstColors.greenColor,
                            ),
                            child: Center(
                              child: Text(
                                "Add Funds",
                                style: pSemiBold18.copyWith(
                                  fontSize: 14,
                                  color: ConstColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        text: "Buy BTC",
                        color: ConstColors.primaryColor,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                    ],
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
