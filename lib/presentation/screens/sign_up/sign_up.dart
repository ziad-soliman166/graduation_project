import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_primary/presentation/screens/sign_up/widgets/text_field_components.dart';

import '../../../core/assets_manager.dart';
import '../../../core/color_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            Padding(
              padding: REdgeInsets.only(top: 60, right: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image(
                        image: AssetImage(AssetsManager.glucoCareText),
                      ),
                      SizedBox(height: 10),
                      Image(
                        image: AssetImage(AssetsManager.monitorText),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
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
                        /////////////////////////////////////////////////////////////////////////
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "First Name",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                    height: 40,
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
                                ],
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Last Name",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                    height: 40,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                        /////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "Username",
                          icon: Icons.person_2,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
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
                        /////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "Email",
                          assetIcon: AssetsManager.gmailIcon,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        ///////////////////////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "phone number",
                          icon: Icons.call,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        //////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "Your birthday",
                          icon: Icons.calendar_month,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        ///////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "Type of diabetes",
                          icon: Icons.monitor_heart_outlined,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        /////////////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "gender",
                          icon: Icons.female_outlined,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        ////////////////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "weight",
                          icon: Icons.monitor_weight,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        ///////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "Password",
                          icon: Icons.key,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
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
                        ///////////////////////////////////////////////////////////////////////////////////
                        const SignUpComponents(
                          text: "Re Password",
                          icon: Icons.key,
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40,
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
                          height: 20.h,
                        ),
                        ///////////////////////////////////////////////////////////////////
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorsManager.lightBackgroundColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 10),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Sign Up",
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
// Row(
// children: [
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "First Name",
// style:
// Theme.of(context).textTheme.titleMedium,
// ),
// SizedBox(height: 10.h),
// Container(
// height: 40,
// child: TextFormField(
// decoration: const InputDecoration(
// fillColor: Colors.white,
// filled: true,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(15),
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(width: 10.w),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "Last Name",
// style:
// Theme.of(context).textTheme.titleMedium,
// ),
// SizedBox(height: 10.h),
// Container(
// height: 40,
// child: TextFormField(
// decoration: const InputDecoration(
// fillColor: Colors.white,
// filled: true,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(15),
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
