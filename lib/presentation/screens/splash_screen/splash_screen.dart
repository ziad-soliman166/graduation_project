import 'package:flutter/material.dart';

import '../../../core/assets_manager.dart';
import '../../../core/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushNamed(context, routesManager.homeScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        AssetsManager.splashImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
