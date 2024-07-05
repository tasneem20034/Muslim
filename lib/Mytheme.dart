import 'package:flutter/material.dart';

class myTheme {
  static Color BlackColor = Color(0xff242424);
  static Color BrownColor = Color(0xffB7935F);
  static Color White = Colors.white;
  static Color LightBrownColor=Color(0xffB7935F);

  static ThemeData lightTheme = ThemeData(
      primaryColor: BrownColor,
      scaffoldBackgroundColor: Colors.transparent,
      canvasColor: BrownColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: BlackColor)
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: BlackColor,
          unselectedItemColor: White,
          showSelectedLabels: true),
      textTheme: TextTheme(
          titleSmall: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: BlackColor),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: BlackColor),
          titleLarge: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: BlackColor)));
}
