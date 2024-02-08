
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utiles/app_colors.dart';
import '../../core/utiles/app_text_styles.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kPrimaryColor,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30.r,
      ),
      titleSpacing: 20.r,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
        size: 30.r,
      ),


    ),


    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: 30.r,
        highlightColor: Colors.transparent,
      ),
    ),

    iconTheme: IconThemeData(
      size: 30.r,
      color: Colors.white,
    ),

    textTheme: TextTheme(
      titleLarge: AppTextStyles.lightTitleLarge,
      titleMedium: AppTextStyles.lightTitleMedium,
      bodyLarge: AppTextStyles.lightBodyLarge,
      bodyMedium: AppTextStyles.lightBodyMedium,
      bodySmall: AppTextStyles.lightBodySmall,
      labelLarge: AppTextStyles.lightLabelLarge,
      labelMedium: AppTextStyles.lightLabelMedium,
    ),
  );
}
