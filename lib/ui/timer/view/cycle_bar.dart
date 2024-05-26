import 'package:flutter/material.dart';

class CycleBar extends StatelessWidget {
  final Color color;
  final double width;

  const CycleBar({
    super.key,
    required this.color,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
