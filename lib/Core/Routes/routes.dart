import 'package:cryptotracker/Core/Routes/routes_name.dart';
import 'package:cryptotracker/Feature/View/Bording%20Screen/bording_first.dart';
import 'package:cryptotracker/Feature/View/Home/home_page.dart';
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
          builder: (context) => const BoardingFirst(),
        );
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text("No data")),
                ));
    }
  }
}
