import 'package:flutter/material.dart';

abstract class IMainButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const IMainButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getButtonStyle(context),
      onPressed: onPressed,
      child: Text(label, style: getLabelStyle(context)),
    );
  }

  @protected
  ButtonStyle getButtonStyle(BuildContext context);
  @protected
  TextStyle getLabelStyle(BuildContext context);
}
