import 'package:flutter/material.dart';
import 'package:reactomic_design/atoms/bottons/main_button_interface.dart';
import 'package:reactomic_design/foundations/colors_foundation.dart';
import 'package:reactomic_design/foundations/fonts_foundation.dart';

class ReactomicMainButton extends IMainButton {
  const ReactomicMainButton({
    super.key,
    required super.label,
    required super.onPressed,
  });

  factory ReactomicMainButton.outlined({
    double stroke = 2.0,
    required String label,
    required VoidCallback onPressed,
  }) {
    return _OutlinedButton(
      label: label,
      stroke: stroke,
      onPressed: onPressed,
    );
  }

  @override
  ButtonStyle getButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme.brightness == Brightness.dark
            ? ColorsFoundation.tertiary
            : ColorsFoundation.primary,
      ),
      minimumSize: WidgetStateProperty.all(const Size(222, 54)),
    );
  }

  @override
  TextStyle getLabelStyle(BuildContext context) {
    final theme = Theme.of(context);
    return theme.brightness == Brightness.light
        ? FontsFoundation.black.fz14.copyWith(color: ColorsFoundation.white)
        : FontsFoundation.black.fz14.copyWith(color: ColorsFoundation.black);
  }
}

class _OutlinedButton extends ReactomicMainButton {
  final double _stroke;
  const _OutlinedButton({
    required super.label,
    required super.onPressed,
    double stroke = 2.0,
  }) : _stroke = stroke;

  @override
  ButtonStyle getButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    return ButtonStyle(
      minimumSize: WidgetStateProperty.all(const Size(222, 54)),
      side: WidgetStateProperty.all(
        BorderSide(
          color: theme.brightness == Brightness.dark
              ? theme.colorScheme.tertiary
              : ColorsFoundation.black,
          width: _stroke,
        ),
      ),
    );
  }

  @override
  TextStyle getLabelStyle(BuildContext context) {
    final theme = Theme.of(context);
    return theme.brightness == Brightness.dark
        ? FontsFoundation.black.fz14.copyWith(color: ColorsFoundation.white)
        : FontsFoundation.black.fz14.copyWith(color: ColorsFoundation.black);
  }
}
