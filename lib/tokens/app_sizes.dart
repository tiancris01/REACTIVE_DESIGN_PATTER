class AppSizes {
  /// Spacing values used in the application.
  /// This class should provide only static values.
  AppSizes._();

  static final _Spacing spacing = _Spacing._();
}

class _Spacing {
  /// final fields:
  /// - [xs]: Extra small spacing value.
  /// - [sm]: Small spacing value.
  /// - [md]: Medium spacing value.
  /// - [rg]: Regular spacing value.
  /// - [lg]: Large spacing value.
  /// - [xl]: Extra large spacing value.
  /// - [xxl]: Huge spacing value.
  /// - [xxxl]: Extra huge spacing value.
  ///

  _Spacing._();
  final double xs = 4.0; // 4.0 Extra small
  final double sm = 8.0; // 8.0 Small
  final double md = 12.0; // 12.0 Medium
  final double rg = 16.0; // 16.0 Regular
  final double lg = 24.0; // 24.0 Large
  final double xl = 32.0; // 32.0 Extra large
  final double xxl = 40.0; // 40.0 Huge
  final double xxxl = 48.0; // 48.0 Extra huge
}
