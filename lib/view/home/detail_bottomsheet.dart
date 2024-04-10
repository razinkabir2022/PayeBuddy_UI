import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/home/buy_screen.dart';
import 'package:currency/view/home/market_trend_screen.dart';
import 'package:currency/view/home/price_alert_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 3,
      width: Get.width,
      decoration: const BoxDecoration(
        color: ConstColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        DefaultImages.h4,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Uniswap",
                      style: pSemiBold18.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "UNI",
                      style: pSemiBold18.copyWith(
                        fontSize: 14,
                        color: ConstColors.greyColor,
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    Get.to(
                      const PriceAlertScreen(),
                      transition: Transition.rightToLeft,
                    );
                  },
                  child: Container(
                    height: 47,
                    width: 61,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          DefaultImages.priceAlert,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Divider(
              color: ConstColors.greyColor.withOpacity(0.5),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "\$16,351.57",
                  style: pSemiBold18.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 8),
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
                const SizedBox(width: 8),
                Text(
                  "+0.9%",
                  style: pSemiBold20.copyWith(
                    fontSize: 12,
                    color: ConstColors.greenColor,
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Buy",
                    color: ConstColors.primaryColor,
                    onTap: () {
                      Get.to(
                        const BuyScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: CustomButton(
                    text: "View Details",
                    color: ConstColors.fontColor,
                    onTap: () {
                      Get.to(
                        const MarketTrendScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
