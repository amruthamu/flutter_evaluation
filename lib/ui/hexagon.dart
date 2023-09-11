import 'package:flutter/material.dart';
import 'hexagon_painter.dart';

class Hexagon extends StatelessWidget {
  final double sideLength;
  final Color color;
  final List<Color> borderColors; // List of border colors
  final double borderWidth; // Border width
  final Widget child;

  const Hexagon({super.key,
    required this.sideLength,
    required this.color,
    required this.borderColors,
    required this.borderWidth,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sideLength,
      height: sideLength,
      child: CustomPaint(
        painter: HexagonPainter(
          color: color,
          borderColors: borderColors, // Pass the list of border colors
          borderWidth: borderWidth,
        ),
        child: Center(child: child),
      ),
    );
  }
}


