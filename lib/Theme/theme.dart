import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get dartkTheme => ThemeData.dark().copyWith(
      textTheme: GoogleFonts.comfortaaTextTheme(
        ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.black,
          brightness: Brightness.light,
        ).textTheme,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffFCCFA8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onPrimary: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        ),
      ),
    );
