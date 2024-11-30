import 'package:flutter/material.dart';
import 'package:graduation_project_primary/core/assets_manager.dart';
import 'package:graduation_project_primary/core/routes_manager.dart';

import '../../../core/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
//welcome
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorsManager.lightBackgroundColor,
                  ColorsManager.darkBackgroundColor,
                ],
              ),
            ),
          ),

          // Circular Image and DNA-like image layered
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Circular Image
                Image.asset(
                  'assets/images/circle.png',
                  width: 250,
                  height: 250,
                ),
                // DNA-like Image (Full Width)
                Image.asset(
                  'assets/images/gen.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),

          Positioned(
            top: 100,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  AssetsManager.glucoCareText,
                  //width: 160,
                ),
                const SizedBox(height: 10),
                Image.asset(
                  AssetsManager.monitorText,
                  //width: 150,
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sign In Button
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, routesManager.signInScreen);
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("Sign In"),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                ),
                const SizedBox(width: 20),
                // Sign Up Button
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, routesManager.signUpScreen);
                  },
                  icon: const Icon(Icons.arrow_upward),
                  label: const Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          // Language Button
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.language),
                label: const Text("Language"),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
