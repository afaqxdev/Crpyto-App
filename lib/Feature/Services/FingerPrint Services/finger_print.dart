import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuth {
  static final auth = LocalAuthentication();

  static Future<bool> hasBiometric() async {
    return await auth.canCheckBiometrics;
  }

  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometric();
    if (!isAvailable) return false;
    try {
      return await auth.authenticate(
          localizedReason: "Scan FingerPrint to Authenticate",
          // ignore: prefer_const_constructors
          options: const AuthenticationOptions(
              useErrorDialogs: true, stickyAuth: true));
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }
}
