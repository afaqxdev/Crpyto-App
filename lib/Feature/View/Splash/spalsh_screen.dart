import 'package:cryptotracker/Feature/Services/splash%20Screen/splash_services.dart';
import 'package:flutter/material.dart';

import '../../../Core/Resources/images/images_link.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices services = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    services.Splash(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        AppImages.logo,
        scale: 3,
      )),
    );
  }
}
