
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme{
  static final themeData = ThemeData(
    primaryColor: AppColor.mainPurpleColor,
    fontFamily: GoogleFonts.rubik().fontFamily,
    scaffoldBackgroundColor: AppColor.secondPurple,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColor.mainPurpleColor,
    ),
    appBarTheme: const AppBarTheme(
      color: AppColor.mainPurpleColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColor.mainPurpleColor),
      )
  ),
    
  );
}