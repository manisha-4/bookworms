import 'package:flutter/material.dart';

class OurTheme {
  Color _lightGreen = Color.fromARGB(255, 213, 235, 220);
  Color _white = Color.fromARGB(255, 255, 255, 255);
  Color _greyLight = Color.fromARGB(255, 164, 164, 164);
  Color _greyDark = Color.fromARGB(255, 119, 124, 135);
  Color _blueLight = Color.fromARGB(242, 86, 204, 242);

  ThemeData builTheme() {
    return ThemeData(
      canvasColor: _lightGreen,
      primaryColor: _lightGreen,
      secondaryHeaderColor: _greyDark,
      accentColor: _greyLight,
      hintColor: _greyLight,
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: _greyLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: _greyDark),
          ),
          hintStyle: TextStyle(fontSize: 14)),
      buttonTheme: ButtonThemeData(
        buttonColor: _greyDark,
        padding: EdgeInsets.symmetric(horizontal: 20),
        minWidth: 200,
        height: 40.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
