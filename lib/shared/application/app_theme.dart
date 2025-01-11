import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        platform: TargetPlatform.iOS,
        colorScheme: colorScheme,
        textTheme: textTheme,
        scaffoldBackgroundColor: Color(0xffFFFFFF),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffFFFFFF),
          centerTitle: true,
          titleTextStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Color(0xffFFFFFF),
          ),
          iconTheme: IconThemeData(
            color: Color(0xff0D1634),
            size: 24,
          ),
        ),
      );

  static ColorScheme get colorScheme => ColorScheme.light(
        brightness: Brightness.light,
        // seedColor: Colors.black,
        primary: Color(0xff0064D2),
        onPrimary: Color(0xffFFFFFF),
        secondary: Color(0xff0D1634),
        onSecondary: Color(0x25283180),
        error: Color(0xffE01E1E),
        onError: Color(0xffFCE9E9),
        surface: Color(0xffFCE9E9),
        onSurface: Color(0xff808991),
      );

  static TextTheme get textTheme => TextTheme(
        headlineLarge: GoogleFonts.inter(
          fontWeight: FontWeight.w700,
          fontSize: 40,
          color: Color(0xff0A0A0A),
        ),
        headlineSmall: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 24,
          color: Color(0xff0D1634),
        ),
        titleLarge: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Color(0xff171818),
        ),
        titleSmall: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Color(0x25283180),
        ),
        bodyLarge: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color(0xff0D1634),
        ),
        displayLarge: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 40,
          color: Color(0xff0D1634),
        ),
        displaySmall: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0x252831b2),
        ),
      );
}
