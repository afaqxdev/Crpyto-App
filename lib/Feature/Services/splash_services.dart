// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:cryptotracker/Core/Routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void Splash(BuildContext context) {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, RoutesName.homeScreen));
  }
}
