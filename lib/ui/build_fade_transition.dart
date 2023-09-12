import 'package:flutter/material.dart';

Widget buildFadeTransition(BuildContext context,
    Animation<double> animation,
    Widget child,
    ) {
  return FadeTransition(
    opacity: animation,
    child: child,
  );
}