import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_primary/presentation/screens/sign_in/sign_in.dart';
import 'package:graduation_project_primary/presentation/screens/sign_up/sign_up.dart';

import '../config/my_theme/my_theme.dart';
import '../core/routes_manager.dart';
import '../presentation/screens/home_screen/home_screen.dart';
import '../presentation/screens/splash_screen/splash_screen.dart';

class GlucoCare extends StatelessWidget {
  const GlucoCare({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myTheme.lightTheme,
        title: "GlucoCare monitor",
        locale: Locale("en"),
        routes: {
          routesManager.splashScreen: (_) => SplashScreen(),
          routesManager.homeScreen: (_) => HomeScreen(),
          routesManager.signInScreen: (_) => SignInScreen(),
          routesManager.signUpScreen: (_) => SignUpScreen(),
        },
        initialRoute: routesManager.splashScreen,
      ),
    );
  }
}

// MaterialApp(
// debugShowCheckedModeBanner: false,
// theme: myTheme.lightTheme,
// title: "GlucoCare monitor",
// locale: Locale("en"),
// routes: {
// routesManager.splashScreen: (_) => SplashScreen(),
// routesManager.homeScreen: (_) => HomeScreen(),
// routesManager.signInScreen: (_) => SignInScreen(),
// routesManager.signUpScreen: (_) => SignUpScreen(),
// },
// initialRoute: routesManager.splashScreen,
// );
