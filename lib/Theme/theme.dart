import 'package:flutter/material.dart';

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
    );
