// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppColors {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color background;
  final Color surface;
  final Color error;
  final Color onPrimary;
  final Color onSecondary;
  final Color onBackground;
  final Color onSurface;
  final Color onError;

  AppColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.background,
    required this.surface,
    required this.error,
    required this.onPrimary,
    required this.onSecondary,
    required this.onBackground,
    required this.onSurface,
    required this.onError,
  });

  @override
  bool operator ==(covariant AppColors other) {
    if (identical(this, other)) return true;

    return other.primary == primary &&
        other.secondary == secondary &&
        other.tertiary == tertiary &&
        other.background == background &&
        other.surface == surface &&
        other.error == error &&
        other.onPrimary == onPrimary &&
        other.onSecondary == onSecondary &&
        other.onBackground == onBackground &&
        other.onSurface == onSurface &&
        other.onError == onError;
  }

  @override
  int get hashCode {
    return primary.hashCode ^
        secondary.hashCode ^
        tertiary.hashCode ^
        background.hashCode ^
        surface.hashCode ^
        error.hashCode ^
        onPrimary.hashCode ^
        onSecondary.hashCode ^
        onBackground.hashCode ^
        onSurface.hashCode ^
        onError.hashCode;
  }
}
