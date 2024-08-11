import 'package:flutter/material.dart';
import 'package:reactomic_design/tokens/gen/fonts.gen.dart';

class TextToken {
  /// Prevent instantiation. This class should provide only static values.
  /// This class should not be instantiated or subclassed.
  ///
  /// static fields:
  /// - [lato]: This field is used to access the Lato font family styles.
  ///
  TextToken._();

  // Font Family Lato
  static final _Lato lato = _Lato._();
}

class _Lato {
  _Lato._();

  // black weight 900
  static const TextStyle _lato =
      TextStyle(fontFamily: FontsToken.lato, decoration: TextDecoration.none);
  final TextStyle black_104 =
      _lato.copyWith(fontSize: 104.0, fontWeight: FontWeight.w900);
  final TextStyle black_44 =
      _lato.copyWith(fontSize: 44.0, fontWeight: FontWeight.w900);
  final TextStyle black_24 =
      _lato.copyWith(fontSize: 24.0, fontWeight: FontWeight.w900);
  final TextStyle black_16 =
      _lato.copyWith(fontSize: 16.0, fontWeight: FontWeight.w900);
  final TextStyle black_14 =
      _lato.copyWith(fontSize: 14.0, fontWeight: FontWeight.w900);
  final TextStyle black_12 =
      _lato.copyWith(fontSize: 12.0, fontWeight: FontWeight.w900);
  final TextStyle black_11 =
      _lato.copyWith(fontSize: 11.0, fontWeight: FontWeight.w900);
  final TextStyle black_10 =
      _lato.copyWith(fontSize: 10.0, fontWeight: FontWeight.w900);

  // extra bold weight 800
  final TextStyle extraBold_10 =
      _lato.copyWith(fontSize: 10.0, fontWeight: FontWeight.w800);

  // bold weight 700
  final TextStyle bold_18 =
      _lato.copyWith(fontSize: 18.0, fontWeight: FontWeight.w700);
  final TextStyle bold_14 =
      _lato.copyWith(fontSize: 14.0, fontWeight: FontWeight.w700);
  final TextStyle bold_12 =
      _lato.copyWith(fontSize: 12.0, fontWeight: FontWeight.w700);

  // regular weight 400
  final TextStyle regular_18 =
      _lato.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400);
  final TextStyle regular_14 =
      _lato.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);
  final TextStyle regular_12 =
      _lato.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400);
  final TextStyle regular_11 =
      _lato.copyWith(fontSize: 11.0, fontWeight: FontWeight.w400);

  // medium weight 500
  final TextStyle medium_12 =
      _lato.copyWith(fontSize: 12.0, fontWeight: FontWeight.w500);
}
