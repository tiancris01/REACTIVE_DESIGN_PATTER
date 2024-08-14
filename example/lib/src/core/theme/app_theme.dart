import 'package:example/src/core/theme/theme_extentions/colors_theme_extention.dart';
import 'package:example/src/core/theme/theme_extentions/font_extention.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reactomic_design/foundations/colors_foundation.dart';

class AppTheme {
  static final singleton = AppTheme._internal();

  AppTheme._internal();

  factory AppTheme() => singleton;

  static const lightColorScheme = ColorScheme.light(
      brightness: Brightness.light,
      primary: ColorsFoundation.primary,
      tertiary: ColorsFoundation.tertiary);

  static const dartkColorScheme = ColorScheme.dark(
      brightness: Brightness.dark,
      primary: ColorsFoundation.tertiary,
      tertiary: ColorsFoundation.error);

  static const appColors = ColorsThemeExtention(
    primary: ColorsFoundation.primary,
    onPrimary: ColorsFoundation.white,
    secondary: ColorsFoundation.secondary,
    onSecondary: ColorsFoundation.black,
    error: ColorsFoundation.error,
    onError: ColorsFoundation.white,
    background: ColorsFoundation.white,
    onBackground: ColorsFoundation.black,
    surface: ColorsFoundation.white,
    onSurface: ColorsFoundation.black,
  );

  static final _lato = GoogleFonts.lato();
  static final _appTextTheme = FontExtention(
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

  static ThemeData light() {
    final defaultTheme = ThemeData.light();
    return defaultTheme.copyWith(
      colorScheme: lightColorScheme,
      extensions: [
        appColors,
        _appTextTheme,
      ],
    );
  }

  static ThemeData dark() {
    final defaultTheme = ThemeData.dark();
    return defaultTheme.copyWith(
      extensions: [
        appColors,
        _appTextTheme,
      ],
      colorScheme: dartkColorScheme,
    );
  }
}
