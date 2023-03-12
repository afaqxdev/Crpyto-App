import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../Core/Providers/theme_provider.dart';
import '../../../Core/Resources/Component/text_widget.dart';
import '../../../Core/Resources/color/app_color.dart';

class CustomOnbording extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const CustomOnbording(
      {required this.image,
      required this.title,
      required this.subtitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Image.asset(
          image,
          height: 400,
          width: 600,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: TextWidget(
            text: title,
            size: 50,
            color: (provider.themeMode == ThemeMode.light)
                ? AppColor.blackColor
                : AppColor.whiteColor,
            weight: FontWeight.bold,
          ),
        ),
        // ignore: prefer_const_constructors
        30.ph,
        Align(
          alignment: Alignment.centerLeft,
          child: TextWidget(
            text: subtitle,
            size: 20,
            color: AppColor.greyColor,
          ),
        ),
      ],
    );
  }
}

extension on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );
  // ignore: unused_element
  SizedBox get pw => SizedBox(
        height: toDouble(),
      );
}
