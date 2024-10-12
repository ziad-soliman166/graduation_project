import 'package:flutter/material.dart';

import '../config/my_theme/my_theme.dart';
import '../core/routes_manager.dart';
import '../presentation/screens/home_screen/home_screen.dart';
import '../presentation/screens/splash_screen/splash_screen.dart';

class GlucoCare extends StatelessWidget {
  const GlucoCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme.lightTheme,
      title: "GlucoCare monitor",
      locale: Locale("en"),
      routes: {
        routesManager.splashScreen: (_) => SplashScreen(),
        routesManager.homeScreen: (_) => HomeScreen(),
      },
      initialRoute: routesManager.splashScreen,
    );
  }
}
