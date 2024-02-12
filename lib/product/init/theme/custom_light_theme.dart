import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kronos/product/init/theme/custom_color_scheme.dart';
import 'package:kronos/product/init/theme/custom_theme.dart';

/// Custom light theme for project design
final class CustomLightTheme implements CustomTheme {
  @override

  /// TODO: change to initailize ThemeData instead of computed
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
