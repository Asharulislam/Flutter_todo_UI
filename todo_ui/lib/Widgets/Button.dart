import 'package:flutter/material.dart';
import 'package:todo_ui/Utils/AppColors.dart';


class Button extends StatelessWidget {
  final String text;
  final Function onpress;

  Button({@required this.text, @required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 340,
      child: TextButton(
        child: Text(text,style: TextStyle(
          color: Colors.white
        ),),
        onPressed: onpress,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    );
  }
}