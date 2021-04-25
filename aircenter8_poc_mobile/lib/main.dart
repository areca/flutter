import 'package:flutter/material.dart';
import 'util/constants.dart';

import 'screens/splash.dart';
import 'navigation/pageRoutes.dart';
import 'screens/core/dashboardPage.dart';
import 'screens/core/umPage.dart';
import 'screens/core/configPage.dart';
import 'screens/flight/schedulePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Splash Screen',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: kPrimary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
      routes: {
        pageRoutes.dashboard: (context) => dashboardPage(),
        pageRoutes.um: (context) => umPage(),
        pageRoutes.config: (context) => configPage(),
        pageRoutes.schedule: (context) => schedulePage(),
      },
    );
  }
}
