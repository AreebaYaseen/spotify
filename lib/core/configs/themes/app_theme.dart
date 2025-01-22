import 'package:flutter/material.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.primary,
      fontFamily: 'Satoshi',
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w500, color: Color(0xff383838)),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(30),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black, width: 0.4)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black, width: 0.4))),
      scaffoldBackgroundColor: AppColors.lightBackground,
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));

  static final darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      fontFamily: 'Satoshi',
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w500, color: Color(0xffA7A7A7)),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(30),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white, width: 0.4)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white, width: 0.4))),
      scaffoldBackgroundColor: AppColors.darkBackground,
      brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));
}
