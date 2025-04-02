import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles{
  static TextStyle fontSize48Medium = GoogleFonts.poppins(
    fontSize: 48,
    fontWeight: FontWeight.w500,
    color: AppColors.white
  );
  static TextStyle fontSize24Normal = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.lighterGray
  );
  static TextStyle fontSize32Medium = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: AppColors.lightBlue,
  );
}