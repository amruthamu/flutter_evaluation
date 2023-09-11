import 'dart:math';

import 'package:flutter/material.dart';

class HexagonPainter extends CustomPainter {
  final Color color;
  final List<Color> borderColors; // List of border colors
  final double borderWidth; // Border width

  HexagonPainter({
    required this.color,
    required this.borderColors,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final Path path = Path();
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;
    const double angle = 360 / 6; // 360 degrees divided by the number of sides (6)

    for (int i = 0; i < 6; i++) {
      final double x = centerX + radius * cos(degToRad(i * angle));
      final double y = centerY + radius * sin(degToRad(i * angle));
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);

    // Drawing the hexagon border with different colors
    for (int i = 0; i < 6; i++) {
      final Paint borderPaint = Paint()
        ..color = borderColors[i]
        ..style = PaintingStyle.stroke
        ..strokeWidth = borderWidth;

      final double x1 = centerX + radius * cos(degToRad(i * angle));
      final double y1 = centerY + radius * sin(degToRad(i * angle));
      final double x2 = centerX + radius * cos(degToRad((i + 1) * angle));
      final double y2 = centerY + radius * sin(degToRad((i + 1) * angle));

      final Path borderPath = Path();
      borderPath.moveTo(x1, y1);
      borderPath.lineTo(x2, y2);
      canvas.drawPath(borderPath, borderPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  double degToRad(double degrees) {
    return degrees * (pi / 180);
  }
}