import 'package:example/src/core/theme/app_colors/app_colors.dart';
import 'package:example/src/core/theme/app_fonts.dart/app_fonts.dart';
import 'package:flutter/material.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final AppColors appColors;
  final AppFonts appFonts;

  AppTheme({
    required this.appColors,
    required this.appFonts,
  });

  ColorScheme _createColorScheme(IScheme scheme) {
    return scheme.createColorScheme(appColors);
  }

  ThemeData _base(ColorScheme colorScheme) {
    final isLight = colorScheme.brightness == Brightness.light;
    return ThemeData(
      extensions: [this],
      useMaterial3: true,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: isLight ? appColors.primary : appColors.tertiary,
      ),
    );
  }

  ThemeData toThemeData(IScheme scheme) {
    final colorScheme = _createColorScheme(scheme);
    return _base(colorScheme).copyWith(brightness: colorScheme.brightness);
  }

  @override
  ThemeExtension<AppTheme> copyWith({
    AppColors? appColors,
    AppFonts? appFonts,
  }) {
    return AppTheme(
      appColors: AppColors(
        primary: appColors?.primary ?? this.appColors.primary,
        secondary: appColors?.secondary ?? this.appColors.secondary,
        tertiary: appColors?.tertiary ?? this.appColors.tertiary,
        background: appColors?.background ?? this.appColors.background,
        surface: appColors?.surface ?? this.appColors.surface,
        error: appColors?.error ?? this.appColors.error,
        onPrimary: appColors?.onPrimary ?? this.appColors.onPrimary,
        onSecondary: appColors?.onSecondary ?? this.appColors.onSecondary,
        onBackground: appColors?.onBackground ?? this.appColors.onBackground,
        onSurface: appColors?.onSurface ?? this.appColors.onSurface,
        onError: appColors?.onError ?? this.appColors.onError,
      ),
      appFonts: AppFonts(
        latoBlack104: appFonts?.latoBlack104 ?? this.appFonts.latoBlack104,
        latoBlack44: appFonts?.latoBlack44 ?? this.appFonts.latoBlack44,
        latoBlack24: appFonts?.latoBlack24 ?? this.appFonts.latoBlack24,
        latoBlack16: appFonts?.latoBlack16 ?? this.appFonts.latoBlack16,
        latoBlack14: appFonts?.latoBlack14 ?? this.appFonts.latoBlack14,
        latoBlack12: appFonts?.latoBlack12 ?? this.appFonts.latoBlack12,
        latoBlack11: appFonts?.latoBlack11 ?? this.appFonts.latoBlack11,
        latoBlack10: appFonts?.latoBlack10 ?? this.appFonts.latoBlack10,
        latoExtraBold10:
            appFonts?.latoExtraBold10 ?? this.appFonts.latoExtraBold10,
        latoBold18: appFonts?.latoBold18 ?? this.appFonts.latoBold18,
        latoBold14: appFonts?.latoBold14 ?? this.appFonts.latoBold14,
        latoBold12: appFonts?.latoBold12 ?? this.appFonts.latoBold12,
        latoRegular18: appFonts?.latoRegular18 ?? this.appFonts.latoRegular18,
        latoRegular14: appFonts?.latoRegular14 ?? this.appFonts.latoRegular14,
        latoRegular12: appFonts?.latoRegular12 ?? this.appFonts.latoRegular12,
        latoRegular11: appFonts?.latoRegular11 ?? this.appFonts.latoRegular11,
      ),
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      appColors: AppColors(
        primary: Color.lerp(appColors.primary, other.appColors.primary, t)!,
        secondary:
            Color.lerp(appColors.secondary, other.appColors.secondary, t)!,
        tertiary: Color.lerp(appColors.tertiary, other.appColors.tertiary, t)!,
        background:
            Color.lerp(appColors.background, other.appColors.background, t)!,
        surface: Color.lerp(appColors.surface, other.appColors.surface, t)!,
        error: Color.lerp(appColors.error, other.appColors.error, t)!,
        onPrimary:
            Color.lerp(appColors.onPrimary, other.appColors.onPrimary, t)!,
        onSecondary:
            Color.lerp(appColors.onSecondary, other.appColors.onSecondary, t)!,
        onBackground: Color.lerp(
            appColors.onBackground, other.appColors.onBackground, t)!,
        onSurface:
            Color.lerp(appColors.onSurface, other.appColors.onSurface, t)!,
        onError: Color.lerp(appColors.onError, other.appColors.onError, t)!,
      ),
      appFonts: AppFonts(
        latoBlack104: TextStyle.lerp(
            appFonts.latoBlack104, other.appFonts.latoBlack104, t)!,
        latoBlack44: TextStyle.lerp(
            appFonts.latoBlack44, other.appFonts.latoBlack44, t)!,
        latoBlack24: TextStyle.lerp(
            appFonts.latoBlack24, other.appFonts.latoBlack24, t)!,
        latoBlack16: TextStyle.lerp(
            appFonts.latoBlack16, other.appFonts.latoBlack16, t)!,
        latoBlack14: TextStyle.lerp(
            appFonts.latoBlack14, other.appFonts.latoBlack14, t)!,
        latoBlack12: TextStyle.lerp(
            appFonts.latoBlack12, other.appFonts.latoBlack12, t)!,
        latoBlack11: TextStyle.lerp(
            appFonts.latoBlack11, other.appFonts.latoBlack11, t)!,
        latoBlack10: TextStyle.lerp(
            appFonts.latoBlack10, other.appFonts.latoBlack10, t)!,
        latoExtraBold10: TextStyle.lerp(
            appFonts.latoExtraBold10, other.appFonts.latoExtraBold10, t)!,
        latoBold18:
            TextStyle.lerp(appFonts.latoBold18, other.appFonts.latoBold18, t)!,
        latoBold14:
            TextStyle.lerp(appFonts.latoBold14, other.appFonts.latoBold14, t)!,
        latoBold12:
            TextStyle.lerp(appFonts.latoBold12, other.appFonts.latoBold12, t)!,
        latoRegular18: TextStyle.lerp(
            appFonts.latoRegular18, other.appFonts.latoRegular18, t)!,
        latoRegular14: TextStyle.lerp(
            appFonts.latoRegular14, other.appFonts.latoRegular14, t)!,
        latoRegular12: TextStyle.lerp(
            appFonts.latoRegular12, other.appFonts.latoRegular12, t)!,
        latoRegular11: TextStyle.lerp(
            appFonts.latoRegular11, other.appFonts.latoRegular11, t)!,
      ),
    );
  }
}

abstract interface class IScheme {
  ColorScheme createColorScheme(AppColors appColors);
}

class LightScheme implements IScheme {
  @override
  ColorScheme createColorScheme(AppColors appColors) {
    return ColorScheme.light(
      primary: appColors.primary,
      secondary: appColors.secondary,
      tertiary: appColors.tertiary,
      error: appColors.error,
    );
  }
}

class DarkScheme implements IScheme {
  @override
  ColorScheme createColorScheme(AppColors appColors) {
    return ColorScheme.dark(
      primary: appColors.tertiary,
      secondary: appColors.secondary,
      tertiary: appColors.primary,
      error: appColors.error,
    );
  }
}
