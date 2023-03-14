import 'package:flutter/material.dart';

import '../../../Core/Resources/color/app_color.dart';

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final int? index;
  final String? code;
  const DigitHolder(
      {required this.selectedIndex,
      required this.width,
      this.index,
      this.code,
      super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: width * 0.1009,
      width: width * 0.107,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: AppColor.coolColor),
          boxShadow: [
            BoxShadow(
              color: index == selectedIndex
                  ? Colors.transparent
                  : Colors.transparent,
              offset: const Offset(0, 0),
              spreadRadius: 1.5,
              blurRadius: 2,
            )
          ]),
      child: code!.length > index!
          ? Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.white.withBlue(40),
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}
