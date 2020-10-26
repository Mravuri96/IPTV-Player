import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get darkTheme => ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffFCCFA8),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
          onPrimary: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData().copyWith(
          color: const Color(0xffFCCFA8),
        ),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedItemColor: const Color(0xffFCCFA8),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: const Color(0xffFCCFA8),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        ),
      ),
      textTheme: GoogleFonts.comfortaaTextTheme(
        ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.black,
          brightness: Brightness.dark,
        ).textTheme,
      ),
    );
