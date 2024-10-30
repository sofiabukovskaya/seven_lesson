import 'package:flutter/material.dart';

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: Text(
        text,
      ),
    );
  }
}
