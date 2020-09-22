import 'package:flutter/material.dart';

ThemeData get dartkTheme => ThemeData.dark().copyWith(
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
