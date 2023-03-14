import 'package:flutter/material.dart';

import '../../../../Core/Resources/Component/text_widget.dart';
import '../../../../Core/Resources/color/app_color.dart';

Widget btn(String name, VoidCallback onpress) {
  return InkWell(
    onTap: onpress,
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: AppColor.coolColor),
          borderRadius: BorderRadius.circular(50)),
      child: Center(child: TextWidget(text: name)),
    ),
  );
}

Widget btnFingerprint(VoidCallback onpress) {
  return InkWell(
    onTap: onpress,
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: AppColor.coolColor),
          borderRadius: BorderRadius.circular(50)),
      child: Center(child: Icon(Icons.fingerprint)),
    ),
  );
}
