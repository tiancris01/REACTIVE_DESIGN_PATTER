import 'package:flutter/material.dart';
import 'package:reactomic_design/foundations/fonts_foundation.dart';

class ReactomicMainButton extends StatelessWidget {
  const ReactomicMainButton({
    super.key,
    required String label,
    required VoidCallback onPressed,
  })  : _label = label,
        _onPressed = onPressed;

  final String _label;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 84, vertical: 20),
        ),
      ),
      onPressed: _onPressed,
      child: Text(_label, style: FontsFoundation.black.fz12),
    );
  }
}
