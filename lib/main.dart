import 'package:cryptotracker/Core/Routes/routes_name.dart';
import 'package:cryptotracker/Core/Resources/Theme%20Changer/Themes.dart';
import 'package:cryptotracker/Core/Shared%20Preferences/local_storage.dart';
import 'package:cryptotracker/Feature/View/Home/home_page.dart';
import 'package:cryptotracker/Core/Providers/market_provider.dart';
import 'package:cryptotracker/Core/Providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Core/Routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String currentTheme = await localStorage.getTheme();
  runApp(MyApp(
    theme: currentTheme,
  ));
}

class MyApp extends StatelessWidget {
  final String theme;

  const MyApp({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MarketProvider>(
          create: (context) => MarketProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(theme),
        ),
      ],
      child: Consumer<ThemeProvider>(builder: (contex, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: lightTheme,
          darkTheme: darhTheme,
          initialRoute: RoutesName.splashScreen,
          onGenerateRoute: Routes.generateRoute,
        );
      }),
    );
  }
}
