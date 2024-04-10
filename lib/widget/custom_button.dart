import 'package:currency/config/colors.dart';
import 'package:currency/config/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color? textColor;
  final VoidCallback onTap;
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 59,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: color,
          border: Border.all(
            color: color == ConstColors.fontColor
                ? ConstColors.fontColor
                : ConstColors.primaryColor,
          ),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.12),
              blurRadius: 5,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: pSemiBold18.copyWith(
              fontSize: 16,
              color: textColor ?? ConstColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
