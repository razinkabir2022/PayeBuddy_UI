import 'package:currency/config/colors.dart';
import 'package:currency/config/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;
  final Widget sufix;
  const CustomTextField(
      {super.key,
      required this.text,
      required this.textEditingController,
      required this.sufix});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: Get.width,
      child: TextFormField(
        controller: textEditingController,
        style: pSemiBold18.copyWith(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          suffixIcon: sufix,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: ConstColors.greyColor.withOpacity(0.3),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: ConstColors.primaryColor,
            ),
          ),
          hintText: text,
          hintStyle: pRegular14.copyWith(
            fontSize: 16,
            color: ConstColors.lightTextColor,
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldWithPrefix extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;
  final Widget prefix;
  const CustomTextFieldWithPrefix(
      {super.key,
      required this.text,
      required this.textEditingController,
      required this.prefix});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: Get.width,
      child: TextFormField(
        controller: textEditingController,
        style: pSemiBold18.copyWith(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          prefixIcon: prefix,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: ConstColors.greyColor.withOpacity(0.3),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: ConstColors.primaryColor,
            ),
          ),
          hintText: text,
          hintStyle: pRegular14.copyWith(
            fontSize: 16,
            color: ConstColors.lightTextColor,
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldWithPrefixSufix extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;
  final Widget prefix;
  final Widget sufix;
  final String label;
  const CustomTextFieldWithPrefixSufix(
      {super.key,
      required this.text,
      required this.textEditingController,
      required this.prefix,
      required this.sufix,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ConstColors.whiteColor,
      ),
      child: TextFormField(
        controller: textEditingController,
        style: pSemiBold18.copyWith(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: sufix,
          border: InputBorder.none,
          hintText: text,
          hintStyle: pRegular14.copyWith(
            fontSize: 14,
            color: ConstColors.lightTextColor,
            height: 1.6,
          ),
          labelText: text,
          labelStyle: pRegular14.copyWith(
            fontSize: 14,
            color: ConstColors.lightTextColor,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}

class CustomTextFieldWithBorder extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;
  final Widget prefix;
  final Widget sufix;

  const CustomTextFieldWithBorder({
    super.key,
    required this.text,
    required this.textEditingController,
    required this.prefix,
    required this.sufix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(
            color: ConstColors.primaryColor,
          )),
      child: TextFormField(
        controller: textEditingController,
        style: pSemiBold18.copyWith(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: sufix,
          border: InputBorder.none,
          hintText: text,
          hintStyle: pRegular14.copyWith(
            fontSize: 16,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldBorder extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;

  const CustomTextFieldBorder({
    super.key,
    required this.text,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: ConstColors.primaryColor,
        ),
      ),
      child: TextFormField(
        controller: textEditingController,
        style: pSemiBold18.copyWith(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 14, right: 14),
          border: InputBorder.none,
          hintText: text,
          hintStyle: pRegular14.copyWith(
            fontSize: 16,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
