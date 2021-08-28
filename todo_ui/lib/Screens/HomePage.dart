import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/Widgets/Appbar.dart';
import 'package:todo_ui/Widgets/SideNavDrawer.dart';


class HomePage extends StatelessWidget {
  static const routeName = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideNavDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TopAppBar(
          text: "ThingsTOD",
          icon: Icons.add,
          onpress: () {},
        ),
      ),
    );
  }
}
