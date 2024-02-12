import 'package:flutter/material.dart';
import 'package:kronos/product/init/theme/custom_color_scheme.dart';
import 'package:kronos/product/init/theme/custom_theme.dart';

/// Custom dark theme for project design
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
