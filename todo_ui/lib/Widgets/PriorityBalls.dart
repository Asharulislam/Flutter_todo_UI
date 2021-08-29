import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriorityBall extends StatelessWidget {
  final Color colour;

  PriorityBall({this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: colour,
        shape: BoxShape.circle,
      ),
    );
  }
}
