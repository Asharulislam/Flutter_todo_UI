import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriorityBall extends StatelessWidget {
  final Color colour;

  PriorityBall({this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: colour,
        shape: BoxShape.circle,
        // border: Border.all(width: 1, color: Colors.red)
      ),
    );
  }
}
