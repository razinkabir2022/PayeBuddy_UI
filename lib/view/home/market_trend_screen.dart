import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/home/exchange_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class MarketTrendScreen extends StatefulWidget {
  const MarketTrendScreen({Key? key}) : super(key: key);

  @override
  State<MarketTrendScreen> createState() => _MarketTrendScreenState();
}

class _MarketTrendScreenState extends State<MarketTrendScreen> {
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
                  "Market Trends",
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
                itemCount: 7,
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(
                        const ExchangeScreen(),
                        transition: Transition.rightToLeft,
                      );
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
                                          ? DefaultImages.e5
                                          : index == 2
                                              ? DefaultImages.c2
                                              : index == 3
                                                  ? DefaultImages.c4
                                                  : index == 4
                                                      ? DefaultImages.e3
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
            ),
          ],
        ),
      ),
    );
  }
}
