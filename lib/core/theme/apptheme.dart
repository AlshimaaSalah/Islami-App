import 'package:flutter/ma'
    'terial.dart';

class AppTheme {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color darkSacandry = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      // bottomSheetTheme: BottomSheetThemeData(backgroundColor: lightPrimaryColor),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Color(0xFF242424),
          fontWeight: FontWeight.w700,
          fontFamily: "ElMessiri",
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightPrimaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
          selectedLabelStyle: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 15,
              fontWeight: FontWeight.bold),
          showUnselectedLabels: false),
      dividerTheme: DividerThemeData(color: lightPrimaryColor, thickness: 2),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Colors.black),
        bodyLarge: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.black),
        bodyMedium: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.black),
        bodySmall: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.black),
      ),
      cardTheme: CardTheme(
          color: Colors.white, elevation: 30, surfaceTintColor: null));

  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimaryColor),
      cardTheme: CardTheme(
          color: darkPrimaryColor, elevation: 30, surfaceTintColor: null),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontFamily: "ElMessiri",
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkPrimaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: darkSacandry,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: darkSacandry, size: 36),
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
          selectedLabelStyle: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 15,
              fontWeight: FontWeight.bold),
          showUnselectedLabels: false),
      dividerTheme: DividerThemeData(color: darkSacandry, thickness: 2),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Colors.white),
        bodyLarge: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.white),
        bodyMedium: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.white),
        bodySmall: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: darkSacandry),
      ));
}
