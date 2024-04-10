import 'package:currency/config/colors.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/profile/add_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
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
                  "Payment Method",
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
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      for (var i = 0; i < 2; i++)
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffE5E5EA),
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          i == 0
                                              ? "Credit/Debit Card"
                                              : "Paypal",
                                          style: pSemiBold20.copyWith(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        i == 0
                                            ? "Use any visa or mastercard to\nstart invesments"
                                            : "Use Paypal as payment method to start invesments",
                                        style: pRegular14.copyWith(
                                          fontSize: 16,
                                          color: ConstColors.greyColor,
                                          height: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: ConstColors.fontColor,
                                    size: 18,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Divider(
                              color: ConstColors.greyColor.withOpacity(0.5),
                            ),
                          ],
                        ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Get.to(
                            const AddCardScreen(),
                            transition: Transition.rightToLeft,
                          );
                        },
                        child: Container(
                          height: 44,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                                  "Add Another Method",
                                  style: pSemiBold20.copyWith(
                                    fontSize: 17,
                                    color: ConstColors.primaryColor,
                                  ),
                                ),
                                const Icon(
                                  Icons.add,
                                  color: ConstColors.primaryColor,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
