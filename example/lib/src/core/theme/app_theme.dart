import 'package:example/src/core/theme/theme_extentions/colors_theme_extention.dart';
import 'package:example/src/core/theme/theme_extentions/font_extention.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reactomic_design/foundations/colors_foundation.dart';

/// AppTheme class
/// This class is used to define the app theme.
///
/// It has two static methods [light] and [dark].
/// Colors and fonts are defined using [ThemeExtension] class
class AppTheme {
  /// Singleton instance of AppTheme
  static final singleton = AppTheme._internal();
  AppTheme._internal();
  factory AppTheme() => singleton;

  /// Light [ColorScheme] for the app
  /// Colors are defined using [ColorsFoundation]
  static const lightColorScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: ColorsFoundation.primary,
    secondary: ColorsFoundation.secondary,
    tertiary: ColorsFoundation.tertiary,
    error: ColorsFoundation.error,
  );

  /// Dark [ColorScheme] for the app
  /// Colors are defined using [ColorsFoundation]
  static const dartkColorScheme = ColorScheme.dark(
    brightness: Brightness.dark,
    primary: ColorsFoundation.tertiary,
    secondary: ColorsFoundation.secondary,
    tertiary: ColorsFoundation.primary,
    error: ColorsFoundation.error,
  );

  /// App colors defined using [ColorsThemeExtention]. It extends [ThemeExtension]
  /// that allows to define custom colors for the app without the need to create separeted classes.
  /// with static methods.
  /// You can access the colors by the help of context.
  static const appColors = ColorsThemeExtention(
    primary: ColorsFoundation.primary,
    onPrimary: ColorsFoundation.white,
    secondary: ColorsFoundation.secondary,
    tertiary: ColorsFoundation.tertiary,
    onSecondary: ColorsFoundation.black,
    error: ColorsFoundation.error,
    onError: ColorsFoundation.white,
    background: ColorsFoundation.white,
    onBackground: ColorsFoundation.black,
    surface: ColorsFoundation.white,
    onSurface: ColorsFoundation.black,
  );

  /// Lato font family
  static final _lato = GoogleFonts.lato();

  /// App fonts defined using [FontExtention]. It extends [ThemeExtension]
  static final appTextTheme = FontExtention(
    latoBlack104: _lato.copyWith(
      fontSize: 104.0,
      fontWeight: FontWeight.w900,
    ),
    latoBlack44: _lato.copyWith(
      fontSize: 44.0,
      fontWeight: FontWeight.w900,
    ),
    latoBlack24: _lato.copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w900,
    ),
    latoBlack16: _lato.copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w900,
    ),
    latoBlack14: _lato.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w900,
    ),
    latoBlack12: _lato.copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w900,
    ),
    latoBlack11: _lato.copyWith(
      fontSize: 11.0,
      fontWeight: FontWeight.w900,
    ),
    latoBlack10: _lato.copyWith(
      fontSize: 10.0,
      fontWeight: FontWeight.w900,
    ),
    latoExtraBold10: GoogleFonts.lato(
      fontSize: 10.0,
      fontWeight: FontWeight.w800,
    ),
    latoBold18: GoogleFonts.lato(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
    ),
    latoBold14: GoogleFonts.lato(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
    ),
    latoBold12: GoogleFonts.lato(
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
    ),
    latoRegular18: GoogleFonts.lato(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
    ),
    latoRegular14: GoogleFonts.lato(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    ),
    latoRegular12: GoogleFonts.lato(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
    ),
    latoRegular11: GoogleFonts.lato(
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
    ),
  );

  /// static method to get light theme
  static ThemeData light() {
    final defaultTheme = ThemeData.light();
    return defaultTheme.copyWith(
      colorScheme: lightColorScheme,
      extensions: [
        appColors,
        appTextTheme,
      ],
      appBarTheme: defaultTheme.appBarTheme.copyWith(
        backgroundColor: ColorsFoundation.secondary,
        foregroundColor: ColorsFoundation.white,
      ),
    );
  }

  /// static method to get dark theme
  static ThemeData dark() {
    final defaultTheme = ThemeData.dark();
    return defaultTheme.copyWith(
      extensions: [
        appColors,
        appTextTheme,
      ],
      colorScheme: dartkColorScheme,
    );
  }
}
