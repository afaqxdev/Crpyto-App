// ignore_for_file: file_names

import 'package:cryptotracker/Core/Resources/color/app_color.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.whiteColor,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
);

ThemeData darhTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.darkColor,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Color.fromARGB(231, 6, 12, 39),
  ),
);
