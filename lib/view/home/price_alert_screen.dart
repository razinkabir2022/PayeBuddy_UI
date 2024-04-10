import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceAlertScreen extends StatefulWidget {
  const PriceAlertScreen({super.key});

  @override
  State<PriceAlertScreen> createState() => _PriceAlertScreenState();
}

class _PriceAlertScreenState extends State<PriceAlertScreen> {
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
                  "Price Alert",
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
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: ConstColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          DefaultImages.c4,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    "Bitcoin",
                                    style: pSemiBold18.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "(BTC)",
                                    style: pSemiBold18.copyWith(
                                      fontSize: 12,
                                      color: ConstColors.greyColor,
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Container(
                                    height: 28,
                                    width: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: ConstColors.greenColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add New",
                                        style: pSemiBold18.copyWith(
                                          fontSize: 14,
                                          color: ConstColors.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Column(
                                children: [
                                  for (var i = 0; i < 3; i++)
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 32,
                                              width: 32,
                                              decoration: BoxDecoration(
                                                color: i == 0 || i == 1
                                                    ? ConstColors.greenColor
                                                        .withOpacity(0.1)
                                                    : const Color(0xffFF6464)
                                                        .withOpacity(0.1),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    i == 0 || i == 1 ? 4.0 : 8),
                                                child: Image.asset(
                                                  i == 0 || i == 1
                                                      ? DefaultImages.c1
                                                      : DefaultImages.c6,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 14),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  i == 0
                                                      ? "Above \$ 82,000"
                                                      : i == 1
                                                          ? "Above \$ 52,000"
                                                          : "Below \$26,000",
                                                  style: pSemiBold18.copyWith(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                Text(
                                                  i == 0
                                                      ? "30 mins ago"
                                                      : i == 1
                                                          ? "2 hour ago"
                                                          : "11 hours ago",
                                                  style: pRegular14.copyWith(
                                                    fontSize: 12,
                                                    color:
                                                        ConstColors.greyColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Expanded(child: SizedBox()),
                                            SizedBox(
                                              height: 20,
                                              child: CupertinoSwitch(
                                                value: true,
                                                onChanged: (v) {},
                                                activeColor: i == 1
                                                    ? Colors.blue
                                                    : ConstColors
                                                        .lightYellowColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Divider(
                                          color: ConstColors.greyColor
                                              .withOpacity(0.5),
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: ConstColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          DefaultImages.c2,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Text(
                                    "Ethereum",
                                    style: pSemiBold18.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "(ETH)",
                                    style: pSemiBold18.copyWith(
                                      fontSize: 12,
                                      color: ConstColors.greyColor,
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Container(
                                    height: 28,
                                    width: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: ConstColors.greenColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add New",
                                        style: pSemiBold18.copyWith(
                                          fontSize: 14,
                                          color: ConstColors.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Column(
                                children: [
                                  for (var i = 0; i < 4; i++)
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 32,
                                              width: 32,
                                              decoration: BoxDecoration(
                                                color: i == 0
                                                    ? ConstColors.greenColor
                                                        .withOpacity(0.1)
                                                    : const Color(0xffFF6464)
                                                        .withOpacity(0.1),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    i == 0 ? 4.0 : 8),
                                                child: Image.asset(
                                                  i == 0
                                                      ? DefaultImages.c1
                                                      : DefaultImages.c6,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 14),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  i == 0
                                                      ? "Above \$ 82,000"
                                                      : i == 1
                                                          ? "Below \$ 52,000"
                                                          : i == 2
                                                              ? "Below \$ 26,000"
                                                              : "Below \$12,000",
                                                  style: pSemiBold18.copyWith(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                Text(
                                                  i == 0
                                                      ? "1 Hour ago"
                                                      : i == 1
                                                          ? "3 hour ago"
                                                          : i == 2
                                                              ? "12 hours ago"
                                                              : "1 day ago",
                                                  style: pRegular14.copyWith(
                                                    fontSize: 12,
                                                    color:
                                                        ConstColors.greyColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Expanded(child: SizedBox()),
                                            SizedBox(
                                              height: 20,
                                              child: CupertinoSwitch(
                                                value: true,
                                                onChanged: (v) {},
                                                activeColor: i == 0
                                                    ? Colors.blue
                                                    : ConstColors
                                                        .lightYellowColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Divider(
                                          color: ConstColors.greyColor
                                              .withOpacity(0.5),
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
