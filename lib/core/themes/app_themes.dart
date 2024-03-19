import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yali/core/constants/my_colors.dart';

class AppThemes{
  AppThemes._();
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    primarySwatch: Colors.blue,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.secondaryColor),
    primarySwatch: Colors.blue,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}