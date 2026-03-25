import 'package:flutter/material.dart';

enum CoolButtonVariant { primary, secondary, danger }

class CoolButton extends StatelessWidget {
  const CoolButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = CoolButtonVariant.primary,
    this.isLoading = false,
    this.isFullWidth = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final CoolButtonVariant variant;
  final bool isLoading;
  final bool isFullWidth;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style;
    switch (variant) {
      case CoolButtonVariant.primary:
        style = ElevatedButton.styleFrom();
      case CoolButtonVariant.secondary:
        style = ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade200,
          foregroundColor: Colors.black87,
          elevation: 0,
        );
      case CoolButtonVariant.danger:
        style = ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        );
    }

    final child = isLoading
        ? const SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Text(label);

    final button = ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: style,
      child: child,
    );

    if (!isFullWidth) {
      return button;
    }

    return SizedBox(
      width: double.infinity,
      child: button,
    );
  }
}
