import 'package:example/src/core/theme/app_theme.dart';
import 'package:example/src/core/theme/theme_extentions/colors_theme_extention.dart';
import 'package:flutter/material.dart';

extension AppThemeExtension on ThemeData {
  ColorsThemeExtention get appColors =>
      extension<ColorsThemeExtention>() ?? AppTheme.appColors;
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
