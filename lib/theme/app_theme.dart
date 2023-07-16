import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goraiya/theme/pallete.dart';

class AppTheme {
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Palette.backgroundColor,
    textTheme: GoogleFonts.poppinsTextTheme(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Palette.backgroundColor,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Palette.primaryColor,
    ),
  );
}
