import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WalletView extends StatefulWidget {
  const WalletView({super.key});

  @override
  State<WalletView> createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  DefaultImages.h8,
                ),
              ),
              const SizedBox(width: 14),
              Text(
                "Smith Rollins",
                style: pSemiBold18.copyWith(
                  fontSize: 18,
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: ConstColors.fontColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    DefaultImages.notification,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const ClampingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          height: 215,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: ConstColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: ConstColors.greyColor.withOpacity(0.1),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                DefaultImages.h4,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "  Bitcoin",
                                          style: pRegular14.copyWith(
                                            fontSize: 12,
                                            color: ConstColors.greyColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "3.521079",
                                  style: pSemiBold20.copyWith(
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "\$19.283 USD",
                                  style: pRegular14.copyWith(
                                    fontSize: 12,
                                    color: ConstColors.greyColor,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Center(
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: ConstColors
                                        .lightYellowColor
                                        .withOpacity(0.5),
                                    child: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: ConstColors.primaryColor,
                                      size: 19,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: Get.height / 3.7
                            ,
                            width: Get.width / 2.5,
                            child: Image.asset(
                              DefaultImages.h9,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, right: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "BTC ",
                                  style: pSemiBold18.copyWith(
                                    fontSize: 14,
                                    color: ConstColors.primaryColor,
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: ConstColors.primaryColor,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120, right: 20),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 28,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: ConstColors.greenColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: ConstColors.whiteColor,
                                    size: 10,
                                  ),
                                  Text(
                                    " +13%",
                                    style: pSemiBold18.copyWith(
                                      fontSize: 14,
                                      color: ConstColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: ConstColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: ConstColors.greyColor.withOpacity(0.1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "Bitcoin (BTC)",
                              style: pSemiBold18.copyWith(
                                fontSize: 14,
                                color: ConstColors.greyColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 3),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$43,362.18  ",
                                  style: pSemiBold20.copyWith(
                                    fontSize: 16,
                                    color: ConstColors.lightTextColor,
                                  ),
                                ),
                                Container(
                                  height: 28,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: ConstColors.greenColor,
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: ConstColors.whiteColor,
                                        size: 10,
                                      ),
                                      Text(
                                        " +13%",
                                        style: pSemiBold18.copyWith(
                                          fontSize: 14,
                                          color: ConstColors.whiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 252,
                              width: Get.width,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    DefaultImages.h2,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 467,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: ConstColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: ConstColors.greyColor.withOpacity(0.1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          DefaultImages.h1,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Buy",
                    color: ConstColors.primaryColor,
                    onTap: () {},
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: CustomButton(
                    text: "Sell",
                    color: ConstColors.fontColor,
                    onTap: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
