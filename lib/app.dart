import 'package:book_app/cofing/routes/app_routes.dart';
import 'package:book_app/cofing/themes/dark_theme.dart';
import 'package:book_app/cofing/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
          theme: LightTheme.lightTheme,
          darkTheme: DarkTheme.darkTheme,
        );
      },

    );
  }
}
