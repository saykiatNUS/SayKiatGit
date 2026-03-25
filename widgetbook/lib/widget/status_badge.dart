import 'package:flutter/material.dart';

enum BadgeTone { success, warning, error, info }

class StatusBadge extends StatelessWidget {
  const StatusBadge({
    super.key,
    required this.label,
    required this.tone,
  });

  final String label;
  final BadgeTone tone;

  @override
  Widget build(BuildContext context) {
    final (Color bg, Color fg) = switch (tone) {
      BadgeTone.success => (Colors.green.shade100, Colors.green.shade900),
      BadgeTone.warning => (Colors.orange.shade100, Colors.orange.shade900),
      BadgeTone.error => (Colors.red.shade100, Colors.red.shade900),
      BadgeTone.info => (Colors.blue.shade100, Colors.blue.shade900),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: fg,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
