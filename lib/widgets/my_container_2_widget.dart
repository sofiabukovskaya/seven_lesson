import 'package:flutter/material.dart';

class MyContainer2Widget extends StatefulWidget {
  const MyContainer2Widget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<MyContainer2Widget> createState() => _MyContainer2WidgetState();
}

class _MyContainer2WidgetState extends State<MyContainer2Widget> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.cyanAccent,
      child: Text(
        widget.text,
      ),
    );
  }
}
