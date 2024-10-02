import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, required this.borderRadius, this.buttonBackGroundColor, required this.textButtonColor,  this.fontSize});

  final String text;
  final BorderRadiusGeometry borderRadius;
  final Color? buttonBackGroundColor;
  final Color textButtonColor;
  final  double? fontSize ;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(buttonBackGroundColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: borderRadius),
          )),
      onPressed: () {},
      child: Text(text,
          style: Styles.textStyle18
              .copyWith(fontWeight: FontWeight.w900, color: textButtonColor , fontSize: fontSize )),
    );
  }
}