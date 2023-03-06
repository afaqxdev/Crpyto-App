import 'package:cryptotracker/Core/Resources/color/app_color.dart';
import 'package:cryptotracker/Feature/View/Home/Maket/markets.dart';
import 'package:cryptotracker/Core/Providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Favorite/favorites.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController viewController;

  @override
  void initState() {
    viewController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome Back",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: (themeProvider.themeMode == ThemeMode.light)
                  ? Colors.black
                  : AppColor.coolColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.toogleTheme();
            },
            padding:
                const EdgeInsets.only(left: 0, bottom: 0, right: 25, top: 5),
            iconSize: 30,
            icon: (themeProvider.themeMode == ThemeMode.light)
                ? Icon(
                    Icons.light_mode,
                    color: AppColor.coolColor,
                  )
                : Icon(
                    Icons.dark_mode,
                    color: AppColor.coolColor,
                  ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crypto Today",
                style: TextStyle(
                    color: (themeProvider.themeMode == ThemeMode.light)
                        ? Colors.black
                        : AppColor.coolColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // const Markets(),
              TabBar(
                controller: viewController,
                tabs: [
                  Tab(
                      child: Text(
                    "Markets",
                    style: TextStyle(
                      color: (themeProvider.themeMode == ThemeMode.light)
                          ? Colors.black
                          : AppColor.coolColor,
                    ),
                  )),
                  Tab(
                    child: Text(
                      "Favorites",
                      style: TextStyle(
                        color: (themeProvider.themeMode == ThemeMode.light)
                            ? Colors.black
                            : AppColor.coolColor,
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    controller: viewController,
                    children: const [Markert(), Favorites()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
