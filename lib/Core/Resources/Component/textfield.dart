import 'package:flutter/material.dart';

import '../color/app_color.dart';

Widget CustomField() {
  return SizedBox(
      width: 10,
      height: 10,
      child: TextField(
        decoration: InputDecoration(
            // enabledBorder: ,
            focusColor: AppColor.whiteColor,
            fillColor: AppColor.whiteColor,
            hoverColor: AppColor.whiteColor,
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.whiteColor),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.whiteColor),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.whiteColor),
                borderRadius: BorderRadius.circular(20)),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.whiteColor),
                borderRadius: BorderRadius.circular(20))),
      ));
}
