import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  final String heading;
  final String description;
  const DescriptionScreen({super.key, required this.heading, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(heading,style: const TextStyle(fontSize: 25)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            description,
            style: const TextStyle(fontSize: 25),
          ),
        ));
  }
}