// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:cryptotracker/Core/Resources/color/app_color.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight? weight;

  TextWidget(
      {required this.text,
      this.size = 17,
      this.weight,
      this.color = AppColor.whiteColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
