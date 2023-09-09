import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String title;
  final String description;
  SecondPage({required this.title, required this.description});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 12, 5, 5),
          child: Container(
            child: Text(
              widget.description,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ));
  }
}