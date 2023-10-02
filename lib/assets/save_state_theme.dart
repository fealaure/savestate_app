import 'package:flutter/material.dart';
import 'package:save_state/assets/save_state_colors.dart';

abstract class SaveStateTheme {
  static final themeData = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(color: SaveStateColors.aero),
      scaffoldBackgroundColor: SaveStateColors.chineseBlack,
      splashColor: Colors.black12,
      useMaterial3: true);
}
