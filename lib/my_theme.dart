import 'package:flutter/material.dart';

class MyThemeData {
  static Color colorBlack = Color.fromARGB(255, 36, 36, 36);
  static Color colorGold = Color.fromARGB(255, 183, 147, 95);
  static Color colorWhite = Color.fromARGB(255, 248, 248, 248);
  static Color colorYalow = Color.fromARGB(255, 250, 204, 29);
  static Color colorBlueDark = Color.fromARGB(255, 20, 26, 46);
  static Color colorRed = Color.fromARGB(255, 166, 10, 34);
  static Color colorGrey = Color.fromARGB(255, 158, 158, 158);

  static ThemeData lightTheme = ThemeData(
    primaryColor: MyThemeData.colorGold,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: colorGold,
        onPrimary: colorWhite,
        secondary: colorBlack,
        onSecondary: colorGold,
        error: colorRed,
        onError: colorBlack,
        background: Colors.transparent,
        onBackground: colorWhite,
        surface: Colors.grey,
        onSurface: colorWhite),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
        subtitle1: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: colorBlack),
        subtitle2: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: colorBlack)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: MyThemeData.colorGold,
        selectedItemColor: MyThemeData.colorBlack,
        unselectedItemColor: MyThemeData.colorWhite),
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: MyThemeData.colorWhite),
  );
  static ThemeData darkTheme = ThemeData(
      primaryColor: MyThemeData.colorYalow,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: colorBlueDark,
          onPrimary: colorWhite,
          secondary: colorYalow,
          onSecondary: colorWhite,
          error: colorRed,
          onError: colorBlack,
          background: Colors.transparent,
          onBackground: colorBlueDark,
          surface: Colors.grey,
          onSurface: colorWhite),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(color: MyThemeData.colorWhite),
        centerTitle: true,
        elevation: 0.0,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: colorWhite),
        subtitle1: TextStyle(
            fontSize: 25, fontWeight: FontWeight.normal, color: colorWhite),
        subtitle2: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: colorYalow),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: MyThemeData.colorBlueDark,
          selectedItemColor: MyThemeData.colorYalow,
          unselectedItemColor: MyThemeData.colorWhite),
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: MyThemeData.colorGrey));
}
