import 'package:flutter/material.dart';

class FontExtention extends ThemeExtension<FontExtention> {
  final TextStyle latoBlack104;
  final TextStyle latoBlack44;
  final TextStyle latoBlack24;
  final TextStyle latoBlack16;
  final TextStyle latoBlack14;
  final TextStyle latoBlack12;
  final TextStyle latoBlack11;
  final TextStyle latoBlack10;
  final TextStyle latoExtraBold10;
  final TextStyle latoBold18;
  final TextStyle latoBold14;
  final TextStyle latoBold12;
  final TextStyle latoRegular18;
  final TextStyle latoRegular14;
  final TextStyle latoRegular12;
  final TextStyle latoRegular11;

  FontExtention({
    required this.latoBlack104,
    required this.latoBlack44,
    required this.latoBlack24,
    required this.latoBlack16,
    required this.latoBlack14,
    required this.latoBlack12,
    required this.latoBlack11,
    required this.latoBlack10,
    required this.latoExtraBold10,
    required this.latoBold18,
    required this.latoBold14,
    required this.latoBold12,
    required this.latoRegular18,
    required this.latoRegular14,
    required this.latoRegular12,
    required this.latoRegular11,
  });

  @override
  ThemeExtension<FontExtention> copyWith({
    TextStyle? latoBlack104,
    TextStyle? latoBlack44,
    TextStyle? latoBlack24,
    TextStyle? latoBlack16,
    TextStyle? latoBlack14,
    TextStyle? latoBlack12,
    TextStyle? latoBlack11,
    TextStyle? latoBlack10,
    TextStyle? latoExtraBold10,
    TextStyle? latoBold18,
    TextStyle? latoBold14,
    TextStyle? latoBold12,
    TextStyle? latoRegular18,
    TextStyle? latoRegular14,
    TextStyle? latoRegular12,
    TextStyle? latoRegular11,
  }) {
    return FontExtention(
      latoBlack104: latoBlack104 ?? this.latoBlack104,
      latoBlack44: latoBlack44 ?? this.latoBlack44,
      latoBlack24: latoBlack24 ?? this.latoBlack24,
      latoBlack16: latoBlack16 ?? this.latoBlack16,
      latoBlack14: latoBlack14 ?? this.latoBlack14,
      latoBlack12: latoBlack12 ?? this.latoBlack12,
      latoBlack11: latoBlack11 ?? this.latoBlack11,
      latoBlack10: latoBlack10 ?? this.latoBlack10,
      latoExtraBold10: latoExtraBold10 ?? this.latoExtraBold10,
      latoBold18: latoBold18 ?? this.latoBold18,
      latoBold14: latoBold14 ?? this.latoBold14,
      latoBold12: latoBold12 ?? this.latoBold12,
      latoRegular18: latoRegular18 ?? this.latoRegular18,
      latoRegular14: latoRegular14 ?? this.latoRegular14,
      latoRegular12: latoRegular12 ?? this.latoRegular12,
      latoRegular11: latoRegular11 ?? this.latoRegular11,
    );
  }

  @override
  ThemeExtension<FontExtention> lerp(
      covariant ThemeExtension<FontExtention>? other, double t) {
    if (other is! FontExtention) {
      return this;
    }
    return FontExtention(
      latoBlack104: TextStyle.lerp(latoBlack104, other.latoBlack104, t)!,
      latoBlack44: TextStyle.lerp(latoBlack44, other.latoBlack44, t)!,
      latoBlack24: TextStyle.lerp(latoBlack24, other.latoBlack24, t)!,
      latoBlack16: TextStyle.lerp(latoBlack16, other.latoBlack16, t)!,
      latoBlack14: TextStyle.lerp(latoBlack14, other.latoBlack14, t)!,
      latoBlack12: TextStyle.lerp(latoBlack12, other.latoBlack12, t)!,
      latoBlack11: TextStyle.lerp(latoBlack11, other.latoBlack11, t)!,
      latoBlack10: TextStyle.lerp(latoBlack10, other.latoBlack10, t)!,
      latoExtraBold10:
          TextStyle.lerp(latoExtraBold10, other.latoExtraBold10, t)!,
      latoBold18: TextStyle.lerp(latoBold18, other.latoBold18, t)!,
      latoBold14: TextStyle.lerp(latoBold14, other.latoBold14, t)!,
      latoBold12: TextStyle.lerp(latoBold12, other.latoBold12, t)!,
      latoRegular18: TextStyle.lerp(latoRegular18, other.latoRegular18, t)!,
      latoRegular14: TextStyle.lerp(latoRegular14, other.latoRegular14, t)!,
      latoRegular12: TextStyle.lerp(latoRegular12, other.latoRegular12, t)!,
      latoRegular11: TextStyle.lerp(latoRegular11, other.latoRegular11, t)!,
    );
  }
}
