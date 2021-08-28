import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onpress;
  TopAppBar({this.text, this.icon,this.onpress});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          onPressed: onpress, 
        )
      ],
    );
  }
}
