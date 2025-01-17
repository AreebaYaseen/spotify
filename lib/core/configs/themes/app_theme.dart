import 'package:flutter/material.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';

class AppTheme{

  static final lightTheme= ThemeData(
    primaryColor:  AppColors.primary,
    fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );

  static final darkTheme= ThemeData(
      primaryColor:  AppColors.primary,
      fontFamily: 'Satoshi',
      scaffoldBackgroundColor: AppColors.darkBackground,
      brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          )
      )
  );
}