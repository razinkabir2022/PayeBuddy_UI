import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/home/detail_bottomsheet.dart';
import 'package:currency/view/home/portfolio_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top + 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Wallet Balance",
                                  style: pRegular14.copyWith(
                                    fontSize: 12,
                                    color: ConstColors.greyColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "USD ",
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
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "\$6641.20",
                              style: pSemiBold20.copyWith(
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Monthly Profit",
                                      style: pRegular14.copyWith(
                                        fontSize: 12,
                                        color: ConstColors.greyColor,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "\$1850.00",
                                      style: pSemiBold20.copyWith(
                                        fontSize: 16,
                                        color: ConstColors.lightTextColor,
                                      ),
                                    ),
                                  ],
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: Text(
                      "Portfolio",
                      style: pSemiBold18.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: 4,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              color: ConstColors.whiteColor.withOpacity(0.8),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff000000).withOpacity(0.05),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                )
                              ],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Text(
                                          index == 0
                                              ? "Bitcoin  "
                                              : "Ethereum  ",
                                          style: pSemiBold18.copyWith(
                                            fontSize: 12,
                                            color: ConstColors.greyColor,
                                          ),
                                        ),
                                        Container(
                                          height: 28,
                                          width: 64,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            color: index == 0
                                                ? ConstColors.orangeColor
                                                : ConstColors.greenColor,
                                          ),
                                          child: Center(
                                            child: Text(
                                              index == 0 ? "-0.79%" : "+1.32",
                                              style: pSemiBold18.copyWith(
                                                fontSize: 14,
                                                color: ConstColors.whiteColor,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "\$36,641.20",
                                      style: pSemiBold20.copyWith(
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    index == 0 ? "BTC" : "ETH",
                                    style: pSemiBold18.copyWith(
                                      fontSize: 12,
                                      color: ConstColors.greyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        const PortfolioScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
                      child: Text(
                        "Portfolio",
                        style: pSemiBold18.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Wallet Balance",
                                style: pSemiBold18.copyWith(
                                  fontSize: 14,
                                  color: ConstColors.greyColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "\$6641.20",
                                style: pSemiBold20.copyWith(
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "USD ",
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
                            const SizedBox(height: 10),
                            Container(
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
                                    size: 15,
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
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 75,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: ConstColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.05),
                            blurRadius: 2,
                          )
                        ],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          card(DefaultImages.h5, "Analytics"),
                          card(DefaultImages.h6, "Withdraw"),
                          card(DefaultImages.h7, "Deposit"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: Text(
                      "Market Trend",
                      style: pSemiBold18.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Get.bottomSheet(
                            const DetailBottomSheet(),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      index == 0
                                          ? DefaultImages.h4
                                          : DefaultImages.h3,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      index == 0 ? "Uniswap" : "Ripple",
                                      style: pSemiBold18.copyWith(
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      index == 0 ? "UNI" : "RIP",
                                      style: pSemiBold18.copyWith(
                                        fontSize: 14,
                                        color: ConstColors.greyColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    index == 0 ? "\$16,351.57" : "\$14,563.34",
                                    style: pSemiBold18.copyWith(
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Icon(
                                        Icons.keyboard_arrow_up,
                                        color: ConstColors.greenColor,
                                        size: 15,
                                      ),
                                      Text(
                                        index == 0 ? " 3.7%" : " 2.5%",
                                        style: pSemiBold18.copyWith(
                                          fontSize: 14,
                                          color: ConstColors.greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget card(String image, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 26,
        width: 26,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        text,
        style: pRegular14.copyWith(
          fontSize: 14,
        ),
      ),
    ],
  );
}
