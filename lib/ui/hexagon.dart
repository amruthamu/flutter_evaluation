import 'dart:math';

import 'package:flutter/material.dart';

class Hexagon extends StatelessWidget {
  final double sideLength;
  final Color color;
  final Widget child;

  Hexagon({
    required this.sideLength,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sideLength,
      height: sideLength,
      child: CustomPaint(
        painter: HexagonPainter(
          color: color, borderColor: Colors.red, borderWidth: 5,
        ),
        child: Center(child: child),
      ),
    );
  }
}

class HexagonPainter extends CustomPainter {
  final Color color;
  final Color borderColor; // Border color
  final double borderWidth; // Border width

  HexagonPainter({
    required this.color,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final Path path = Path();
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;
    final double angle = 360 / 6; // 360 degrees divided by the number of sides (6)

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
    canvas.drawPath(path, borderPaint); // Draw border around the hexagon
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  double degToRad(double degrees) {
    return degrees * (pi / 180);
  }
}

