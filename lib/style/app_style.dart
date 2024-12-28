import 'package:flutter/material.dart';

class AppStyle {
  static Color darkPrimaryColor = const Color(0xff141A2E);
  static Color lightPrimaryColor = const Color(0xffB7935F);
  static Color darkSecandary = const Color(0xffFACC1D);

  static ThemeData LightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: lightPrimaryColor),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
      titleLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: const Color(0xffB7935F),
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
      elevation: 20,
      margin: EdgeInsets.all(16),
      surfaceTintColor: Colors.white,
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.transparent,
      thickness: 3,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w600,
        )),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      primary: const Color(0xffB7935F),
      secondary: const Color(0xffB7935F).withOpacity(0.57),
      tertiary: const Color(0xffB7935F),
       onPrimary:const Color(0xffffffff),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimaryColor,
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      selectedIconTheme: const IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  );
  //Dark Theme
  static ThemeData DarkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimaryColor),
    textTheme: TextTheme(
      titleMedium: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: darkSecandary,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: darkSecandary,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: darkSecandary,
      ),
    ),
    cardTheme: CardTheme(
      color: darkPrimaryColor,
      elevation: 20,
      margin: const EdgeInsets.all(16),
      surfaceTintColor: Colors.white,
    ),
    dividerTheme: DividerThemeData(
      color: darkSecandary,
      thickness: 3,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w600,
        )),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      primary: darkPrimaryColor,
      secondary: darkSecandary,
      tertiary: darkSecandary,
      onPrimary: darkPrimaryColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimaryColor,
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      selectedIconTheme: IconThemeData(
        color: darkSecandary,
        size: 30,
      ),
      selectedItemColor: darkSecandary,
      unselectedItemColor: Colors.white,
    ),
  );
}
