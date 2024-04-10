import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/home/coin_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
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
                  "Portfolio",
                  style: pSemiBold18.copyWith(
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: ConstColors.whiteColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        DefaultImages.search,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Portfolio Value",
                      style: pSemiBold20.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Feb 28, 2021",
                      style: pSemiBold18.copyWith(
                        fontSize: 12,
                        color: ConstColors.greyColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$15,050.13",
                          style: pSemiBold20.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$112.20 (+3,1%)",
                          style: pRegular14.copyWith(
                            fontSize: 12,
                            color: ConstColors.orangeColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 48,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: ConstColors.primaryColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All",
                      style: pSemiBold18.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: ConstColors.fontColor,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      if (index % 2 == 0) {
                        Get.to(
                          const CoinDetailScreen(
                            tooltip: true,
                          ),
                          transition: Transition.rightToLeft,
                        );
                      } else {
                        Get.to(
                          const CoinDetailScreen(
                            tooltip: false,
                          ),
                          transition: Transition.rightToLeft,
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
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
                                      : index == 1
                                          ? DefaultImages.c3
                                          : index == 2
                                              ? DefaultImages.c4
                                              : index == 3
                                                  ? DefaultImages.c2
                                                  : DefaultImages.e6,
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
                                  index == 0
                                      ? "TACoint"
                                      : index == 0
                                          ? "KSCoint"
                                          : index == 0
                                              ? "Bitcoin"
                                              : index == 0
                                                  ? "Ethereum"
                                                  : "Chainlink",
                                  style: pSemiBold18.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text(
                                      index == 0
                                          ? "TAC"
                                          : index == 1
                                              ? "RIP"
                                              : index == 2
                                                  ? "BTC"
                                                  : index == 3
                                                      ? "RIP"
                                                      : "CHN",
                                      style: pSemiBold18.copyWith(
                                        fontSize: 14,
                                        color: ConstColors.greyColor,
                                      ),
                                    ),
                                    Text(
                                      index == 0 ? "   +3.54%" : "   -1.54%",
                                      style: pSemiBold18.copyWith(
                                        fontSize: 14,
                                        color: index % 2 == 0
                                            ? ConstColors.greenColor
                                            : ConstColors.orangeColor,
                                      ),
                                    ),
                                  ],
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
                              Text(
                                "0,0018 TAC",
                                style: pSemiBold18.copyWith(
                                  fontSize: 14,
                                  color: ConstColors.greyColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
