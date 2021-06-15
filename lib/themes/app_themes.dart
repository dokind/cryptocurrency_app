import 'package:flutter/material.dart';

enum AppTheme {
  Dark,
  Light,
  MaterialPlat,
}

final appThemeData = {
  AppTheme.Dark: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
  ),
  AppTheme.Light: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
  ),
  AppTheme.MaterialPlat: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
};
