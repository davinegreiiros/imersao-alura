import 'package:app_techtaste/ui/_core/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (states.contains(WidgetState.pressed)) {
            return Color.fromARGB(171, 255, 165, 89);
          } else {
            return AppColors.mainColor;
          }
        }),
      ),
    ),
  );
}
