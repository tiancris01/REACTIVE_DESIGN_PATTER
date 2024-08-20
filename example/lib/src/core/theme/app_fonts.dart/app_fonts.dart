// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppFonts {
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

  AppFonts({
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

  factory AppFonts.google(TextStyle font) {
    return AppFonts(
      latoBlack104: font.copyWith(
        fontSize: 104.0,
        fontWeight: FontWeight.w900,
      ),
      latoBlack44: font.copyWith(
        fontSize: 44.0,
        fontWeight: FontWeight.w900,
      ),
      latoBlack24: font.copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w900,
      ),
      latoBlack16: font.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w900,
      ),
      latoBlack14: font.copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w900,
      ),
      latoBlack12: font.copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w900,
      ),
      latoBlack11: font.copyWith(
        fontSize: 11.0,
        fontWeight: FontWeight.w900,
      ),
      latoBlack10: font.copyWith(
        fontSize: 10.0,
        fontWeight: FontWeight.w900,
      ),
      latoExtraBold10: font.copyWith(
        fontSize: 10.0,
        fontWeight: FontWeight.w800,
      ),
      latoBold18: font.copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      ),
      latoBold14: font.copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
      ),
      latoBold12: font.copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w700,
      ),
      latoRegular18: font.copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
      latoRegular14: font.copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      latoRegular12: font.copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
      latoRegular11: font.copyWith(
        fontSize: 11.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  @override
  bool operator ==(covariant AppFonts other) {
    if (identical(this, other)) return true;

    return other.latoBlack104 == latoBlack104 &&
        other.latoBlack44 == latoBlack44 &&
        other.latoBlack24 == latoBlack24 &&
        other.latoBlack16 == latoBlack16 &&
        other.latoBlack14 == latoBlack14 &&
        other.latoBlack12 == latoBlack12 &&
        other.latoBlack11 == latoBlack11 &&
        other.latoBlack10 == latoBlack10 &&
        other.latoExtraBold10 == latoExtraBold10 &&
        other.latoBold18 == latoBold18 &&
        other.latoBold14 == latoBold14 &&
        other.latoBold12 == latoBold12 &&
        other.latoRegular18 == latoRegular18 &&
        other.latoRegular14 == latoRegular14 &&
        other.latoRegular12 == latoRegular12 &&
        other.latoRegular11 == latoRegular11;
  }

  @override
  int get hashCode {
    return latoBlack104.hashCode ^
        latoBlack44.hashCode ^
        latoBlack24.hashCode ^
        latoBlack16.hashCode ^
        latoBlack14.hashCode ^
        latoBlack12.hashCode ^
        latoBlack11.hashCode ^
        latoBlack10.hashCode ^
        latoExtraBold10.hashCode ^
        latoBold18.hashCode ^
        latoBold14.hashCode ^
        latoBold12.hashCode ^
        latoRegular18.hashCode ^
        latoRegular14.hashCode ^
        latoRegular12.hashCode ^
        latoRegular11.hashCode;
  }
}
