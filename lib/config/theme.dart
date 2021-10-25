import 'package:calculo/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(color: darkBackgroundColor),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: darkBackgroundColor),
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      secondary: lightButtonBackgroundColor,
      secondaryVariant: lightKeyboardBackgroundColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: darkBackgroundColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.white),
    colorScheme: ColorScheme.dark().copyWith(
      primary: darkBackgroundColor,
      secondary: darkButtonBackgroundColor,
      secondaryVariant: darkKeyboardBackgroundColor,
    ),
  );
}
