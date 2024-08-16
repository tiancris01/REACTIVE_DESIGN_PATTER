import 'package:example/src/core/theme/app_theme.dart';
import 'package:example/src/core/theme/theme_extentions/colors_theme_extention.dart';
import 'package:example/src/core/theme/theme_extentions/font_extention.dart';
import 'package:flutter/material.dart';

/// [ThemeData] extension to get the colors of the app
/// This extension is used to get the colors of the app
extension AppThemeExtension on ThemeData {
  ColorsThemeExtention get appColors =>
      extension<ColorsThemeExtention>() ?? AppTheme.appColors;

  FontExtention get appFonts =>
      extension<FontExtention>() ?? AppTheme.appTextTheme;
}

/// [BuildContext] extension to get the theme of the app
extension ThemeGetter on BuildContext {
  ThemeData get themeData => Theme.of(this);
}

/// Optional. If you also want to assign colors in the `ColorScheme`.
extension ColorSchemeBuilder on ColorsThemeExtention {
  ColorScheme toColorScheme(Brightness brightness) {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      error: error,
      onError: onError,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
    );
  }
}
