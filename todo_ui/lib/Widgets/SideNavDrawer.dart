import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/Screens/AddTask.dart';
import 'package:todo_ui/Utils/AppColors.dart';
import 'package:todo_ui/Widgets/DrawerMenu.dart';

//side navigation bar
class SideNavDrawer extends StatefulWidget {
  @override
  _SideNavDrawerState createState() => _SideNavDrawerState();
}

class _SideNavDrawerState extends State<SideNavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: AppColors.ColorPrimary,
            child: DrawerHeader(
                child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.all(new Radius.circular(50)),
                    border: new Border.all(
                      color: AppColors.ColorPrimary,
                      width: 1.0,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      "images/person.png",
                      height: 100.0,
                      width: 100.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Ishaq Hassan",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: AppColors.ColorText),
                  ),
                )
              ],
            )),
          ),
          DrawerMenu(
            text: "New Task",
            prefixIcon: Icons.add,
            onpress: () {
              Navigator.of(context).pushNamed(AddTask.routeName);
            },
          ),
          DrawerMenu(
            text: 'Logout',
            prefixIcon: Icons.logout,
            onpress: () {},
          ),
        ],
      ),
    );
  }
}
