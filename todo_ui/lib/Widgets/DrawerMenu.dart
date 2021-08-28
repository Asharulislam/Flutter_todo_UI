import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/Utils/AppColors.dart';


//Drawer side menu
class DrawerMenu extends StatelessWidget {
 final String text;
 final Function onpress;
 final IconData prefixIcon;

  DrawerMenu({this.text, this.onpress, this.prefixIcon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        prefixIcon,
        color: AppColors.ColorBlack,
      ),
      title: Text(
        text,
        style: TextStyle(color: AppColors.ColorBlack, fontSize: 14),
      ),
      onTap: onpress,
    );
  }
}
