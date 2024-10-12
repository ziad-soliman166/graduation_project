import 'package:flutter/material.dart';

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
                  colorManager.lightBackgroundColor, // Lighter at the top
                  colorManager.darkBackgroundColor, // Darker at the bottom
                ],
              ),
            ),
          ),

          // Circular Image and DNA-like image layered
          Positioned(
            top: 150, // Adjust top positioning
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
                  'assets/images/gen.png', // Assuming this is the DNA image
                  width: MediaQuery.of(context).size.width, // Full width
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),

          // "GlucoCare Monitor" Text
          const Positioned(
            top: 100, // Adjust top positioning
            left: 100,
            right: 0,
            child: Column(
              children: const [
                Text(
                  'GlucoCare',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Monitor',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          // Sign In and Sign Up Buttons
          Positioned(
            bottom: 120, // Adjust bottom positioning
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sign In Button
                ElevatedButton.icon(
                  onPressed: () {},
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
                  onPressed: () {},
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
            bottom: 50, // Adjust bottom positioning
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
