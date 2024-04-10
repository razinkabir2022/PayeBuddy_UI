// ignore_for_file: deprecated_member_use

import 'package:currency/config/colors.dart';
import 'package:currency/config/images.dart';
import 'package:currency/config/text_style.dart';
import 'package:currency/widget/custom_button.dart';
import 'package:currency/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: ConstColors.whiteColor,
                    child: Icon(
                      Icons.arrow_back,
                      color: ConstColors.fontColor,
                      size: 20,
                    ),
                  ),
                  Text(
                    "Account",
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
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              DefaultImages.h8,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: Image.asset(
                              DefaultImages.p11,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomTextFieldWithPrefixSufix(
                        text: "First Name",
                        textEditingController:
                            TextEditingController(text: "Smith"),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.tab4,
                            color: ConstColors.lightTextColor.withOpacity(0.5),
                          ),
                        ),
                        sufix: const SizedBox(),
                        label: "First Name",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFieldWithPrefixSufix(
                        text: "Last Name",
                        textEditingController:
                            TextEditingController(text: "Rollins"),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.tab4,
                            color: ConstColors.lightTextColor.withOpacity(0.5),
                          ),
                        ),
                        sufix: const SizedBox(),
                        label: "Last Name",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFieldWithPrefixSufix(
                        text: "Email address",
                        textEditingController: TextEditingController(
                            text: "smithrollins05@yahoo.com"),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.p10,
                            color: ConstColors.lightTextColor.withOpacity(0.5),
                          ),
                        ),
                        sufix: const SizedBox(),
                        label: "Email address",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFieldWithPrefixSufix(
                        text: "Password",
                        textEditingController:
                            TextEditingController(text: "123456"),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.p9,
                            color: ConstColors.lightTextColor.withOpacity(0.5),
                          ),
                        ),
                        sufix: const SizedBox(),
                        label: "Password",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFieldWithPrefixSufix(
                        text: "Phone Number",
                        textEditingController:
                            TextEditingController(text: "+880 1124588875"),
                        prefix: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            DefaultImages.p1,
                            color: ConstColors.lightTextColor.withOpacity(0.5),
                          ),
                        ),
                        sufix: const SizedBox(),
                        label: "Phone Number",
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Save Changes",
              color: ConstColors.primaryColor,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
