import 'package:flutter/material.dart';

import 'description_screen.dart';
import 'hexagon.dart';

Widget hexagonCreate(BuildContext context, String title, String desc, List<Color> borderColors) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DescriptionScreen(
            heading: title,
            description: desc,
          ),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Hexagon(
        sideLength: 100,
        color: Colors.white,
        borderColors: borderColors,
        borderWidth: 5,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
      ),
    ),
  );
}
