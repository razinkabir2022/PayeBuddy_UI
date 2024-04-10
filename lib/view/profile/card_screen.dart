import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/profile/receieve_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:currency/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
                  "Send TACoint",
                  style: pSemiBold18.copyWith(
                    fontSize: 18,
                  ),
                ),
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 32,
                                width: 32,
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
                                    "TACointt",
                                    style: pSemiBold20.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "TAC",
                                    style: pSemiBold20.copyWith(
                                      fontSize: 12,
                                      color: ConstColors.greyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\$ 10000.0",
                                style: pSemiBold20.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "+3.54%",
                                style: pSemiBold20.copyWith(
                                  fontSize: 12,
                                  color: ConstColors.greenColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        color: ConstColors.greyColor.withOpacity(0.2),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "USD",
                            style: pRegular14.copyWith(
                              fontSize: 36,
                            ),
                          ),
                          Text(
                            "\$ 10",
                            style: pSemiBold20.copyWith(
                              fontSize: 36,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1.5,
                              color: ConstColors.greyColor.withOpacity(0.2),
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: SvgPicture.asset(
                              DefaultImages.p6,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TAC",
                            style: pRegular14.copyWith(
                              fontSize: 36,
                              color: ConstColors.greyColor,
                            ),
                          ),
                          Text(
                            "0.01",
                            style: pSemiBold20.copyWith(
                              fontSize: 41,
                              color: ConstColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Paste Address",
                        textEditingController: TextEditingController(),
                        sufix: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Image.asset(
                            DefaultImages.p13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Next",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.to(
                  const ReceieveScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
