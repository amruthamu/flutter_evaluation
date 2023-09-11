import 'dart:math';
import 'package:flutter/material.dart';

class PainterData extends CustomPainter {
  final Offset primaryOffset;
  final Offset secondaryOffset;
  final Color color;
  final double strokeWidth;
  final double dotLength;
  final double dotSpace;

  const PainterData({
    required this.primaryOffset,
    required this.secondaryOffset,
    this.color = Colors.black,
    this.strokeWidth = 2.0,
    this.dotLength = 3.0,
    this.dotSpace = 2.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth;
    drawDottedLine(
      dotLength,
      dotSpace,
      primaryOffset,
      secondaryOffset,
      canvas,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  void drawDottedLine(
      double dotLength,
      double dashSpace,
      Offset primaryOffset,
      Offset secondaryOffset,
      Canvas canvas,
      Paint paint,
      ) {
    var directionVector = Offset(
      secondaryOffset.dx - primaryOffset.dx,
      secondaryOffset.dy - primaryOffset.dy,
    );

    var directionVectorLength =
    sqrt(pow(directionVector.dx, 2) + pow(directionVector.dy, 2));

    var normalizedVector = Offset(
      directionVector.dx / directionVectorLength,
      directionVector.dy / directionVectorLength,
    );

    var numDashes = directionVectorLength / (dotLength + dashSpace);
    var delta = Offset(
      normalizedVector.dx * (dotLength + dashSpace),
      normalizedVector.dy * (dotLength + dashSpace),
    );

    var currentPoint = primaryOffset;
    for (var i = 0; i < numDashes; i++) {
      var endPoint = Offset(
        currentPoint.dx + normalizedVector.dx * dotLength,
        currentPoint.dy + normalizedVector.dy * dotLength,
      );
      canvas.drawLine(currentPoint, endPoint, paint);
      currentPoint = Offset(
        endPoint.dx + delta.dx,
        endPoint.dy + delta.dy,
      );
    }
  }
}

class DirectionVector {
  final Offset vector;
  final double length;

  const DirectionVector({
    required this.vector,
    required this.length,
  });
}
