import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.bgCoolor,
      surfaceTintColor: AppColors.bgCoolor,
      elevation: 0,
    ),
    scaffoldBackgroundColor: AppColors.bgCoolor,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.grey.withOpacity(0.3))),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.red.withOpacity(0.3))),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.grey.withOpacity(0.3))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.grey.withOpacity(0.3))),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.grey.withOpacity(0.3))),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.red.withOpacity(0.3))),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    useMaterial3: true,
  );
}
