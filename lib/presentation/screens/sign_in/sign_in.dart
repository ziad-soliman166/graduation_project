import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets_manager.dart';
import '../../../core/color_manager.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image(
                image: AssetImage(AssetsManager.logoImage),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Icon(
                  Icons.login,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: ColorsManager.lightBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 30,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Username",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.key,
                              size: 30,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Password",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: REdgeInsets.symmetric(
                                    horizontal: 12, vertical: 17),
                                child: const Text(
                                  "SignIn with  ",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                              ),
                              const Text(
                                "google",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              const ImageIcon(
                                AssetImage(AssetsManager.gmailIcon),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: REdgeInsets.symmetric(
                                    horizontal: 12, vertical: 17),
                                child: const Text(
                                  "SignIn with  ",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 72.w,
                              ),
                              const Text(
                                "Facebook",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              const ImageIcon(
                                size: 30,
                                AssetImage(AssetsManager.facebookIcon),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorsManager.lightBackgroundColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 10),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
