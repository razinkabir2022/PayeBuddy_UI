import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/view/profile/sucess_payment_screen.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:currency/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
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
                  "Link Your Card",
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
                      const SizedBox(height: 30),
                      CustomTextFieldWithBorder(
                        text: "Name On Card",
                        textEditingController: TextEditingController(),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.p21,
                          ),
                        ),
                        sufix: const SizedBox(),
                      ),
                      const SizedBox(height: 15),
                      CustomTextFieldWithBorder(
                        text: "Card Number",
                        textEditingController: TextEditingController(),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.p20,
                          ),
                        ),
                        sufix: Padding(
                          padding: const EdgeInsets.only(top: 15, right: 10),
                          child: Text(
                            "VISA",
                            style: pSemiBold20.copyWith(
                              fontSize: 16,
                              color: ConstColors.greyColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFieldBorder(
                              text: "Exp MM/YY",
                              textEditingController: TextEditingController(),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: CustomTextFieldBorder(
                              text: "CVC",
                              textEditingController: TextEditingController(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      CustomTextFieldWithBorder(
                        text: "Postal Code",
                        textEditingController: TextEditingController(),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.p22,
                          ),
                        ),
                        sufix: const SizedBox(),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "By adding a new card, you agree to the ",
                  style: pRegular14.copyWith(
                    fontSize: 15,
                    color: ConstColors.greyColor,
                  ),
                ),
                Text(
                  "Credit/",
                  style: pSemiBold20.copyWith(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              "Debit Card Terms.",
              style: pSemiBold20.copyWith(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Add Card",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.to(
                  const SuccessScreen(),
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
