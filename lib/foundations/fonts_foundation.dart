import 'package:flutter/material.dart';
import 'package:reactomic_design/tokens/text_token.dart';

class FontsFoundation {
  FontsFoundation._();

  static final _Black black = _Black._();
  static final _Bold bold = _Bold._();
  static final _Regular regular = _Regular._();
  static final _Medium medium = _Medium._();
  static final _ExtraBold extraBold = _ExtraBold._();
}

class _Black {
  _Black._();

  final TextStyle fz104 = TextToken.lato.black_104;
  final TextStyle fz44 = TextToken.lato.black_44;
  final TextStyle fz24 = TextToken.lato.black_24;
  final TextStyle fz16 = TextToken.lato.black_16;
  final TextStyle fz14 = TextToken.lato.black_14;
  final TextStyle fz12 = TextToken.lato.black_12;
  final TextStyle fz11 = TextToken.lato.black_11;
  final TextStyle fz10 = TextToken.lato.black_10;
}

class _Bold {
  _Bold._();

  final TextStyle fz18 = TextToken.lato.bold_18;
  final TextStyle fz14 = TextToken.lato.bold_14;
  final TextStyle fz12 = TextToken.lato.bold_12;
}

class _Regular {
  _Regular._();

  final TextStyle fz18 = TextToken.lato.regular_18;
  final TextStyle fz14 = TextToken.lato.regular_14;
  final TextStyle fz12 = TextToken.lato.regular_12;
  final TextStyle fz11 = TextToken.lato.regular_11;
}

class _Medium {
  _Medium._();

  final TextStyle fz12 = TextToken.lato.medium_12;
}

class _ExtraBold {
  _ExtraBold._();

  final TextStyle fz10 = TextToken.lato.extraBold_10;
}
