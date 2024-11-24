import 'package:flutter/ma'
    'terial.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
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
          backgroundColor: primaryColor,
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
      dividerTheme: DividerThemeData(color: primaryColor, thickness: 2),
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
      ));
}
