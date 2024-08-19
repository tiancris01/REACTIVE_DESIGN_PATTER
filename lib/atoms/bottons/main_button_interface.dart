import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

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
    return _ElevatedButton(
      label: label,
      onPressed: onPressed,
      getButtonStyle: getButtonStyle,
      getLabelStyle: getLabelStyle,
    );
  }

  @protected
  ButtonStyle getButtonStyle(BuildContext context);
  @protected
  TextStyle getLabelStyle(BuildContext context);
}

class _ElevatedButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final ButtonStyle Function(BuildContext) getButtonStyle;
  final TextStyle Function(BuildContext) getLabelStyle;
  const _ElevatedButton({
    required this.label,
    required this.onPressed,
    required this.getButtonStyle,
    required this.getLabelStyle,
  });

  @override
  State<_ElevatedButton> createState() => __ElevatedButtonState();
}

class __ElevatedButtonState extends State<_ElevatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    print('initState');

    _controller = AnimationController.unbounded(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 1000));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant _ElevatedButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    print('didUpdateWidget $oldWidget $widget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    print('debugFillProperties');
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    print('dispose');
  }

  LinearGradient get _shimmerGradient => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.transparent,
          Colors.purple[900]!,
        ],
        // stops: const [0.0, 0.5, 1.0],
        tileMode: TileMode.clamp,
        transform: _SlidingGradientTransform(slidePercent: _controller.value),
      );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect bounds) {
        return _shimmerGradient.createShader(bounds);
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return ElevatedButton(
            onHover: (isHovering) {},
            style: widget.getButtonStyle(context),
            onPressed: widget.onPressed,
            child: Text(widget.label, style: widget.getLabelStyle(context)),
          );
        },
      ),
    );
  }
}

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform({
    required this.slidePercent,
  });

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}
