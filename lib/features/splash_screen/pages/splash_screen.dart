import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cofing/routes/app_routes.dart';
import '../../../core/utiles/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
      },
    );
    return Scaffold(
      body: Center(
        child: Image.asset(
          width: 150.w,
          AppImages.appLogo,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
