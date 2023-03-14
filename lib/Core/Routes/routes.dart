import 'package:cryptotracker/Core/Routes/routes_name.dart';
import 'package:cryptotracker/Feature/View/Bording%20Screen/Onbording.dart';
import 'package:cryptotracker/Feature/View/Home/home_page.dart';
import 'package:cryptotracker/Feature/View/Pin%20Code/pin_screen.dart';
import 'package:cryptotracker/Feature/View/Splash/spalsh_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RoutesName.bordingScreen1:
        return MaterialPageRoute(
          builder: (context) => BoardingFirst(),
        );
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case RoutesName.pinSceen:
        return MaterialPageRoute(builder: (context) => const PinScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text("No data")),
                ));
    }
  }
}
