import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/Models/Task_model_class.dart';
import 'package:todo_ui/Screens/AddTask.dart';
import 'package:todo_ui/Utils/AppColors.dart';
import 'package:todo_ui/Widgets/Appbar.dart';
import 'package:todo_ui/Widgets/PriorityBalls.dart';
import 'package:todo_ui/Widgets/SideNavDrawer.dart';

class HomePage extends StatefulWidget {
  static const routeName = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideNavDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TopAppBar(
          text: "ThingsTOD",
          icon: Icons.add,
          onpress: () {
            Navigator.of(context).pushNamed(AddTask.routeName);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 70,
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              color: AppColors.ColorPrimary,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '\t\t\t\tSearch Task',
                  contentPadding: const EdgeInsets.only(top: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
                itemCount: taskmodel.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key(taskmodel[index].toString()),
                    background: slideRightBackground(),
                    secondaryBackground: slideLeftBackground(),
                    child: Card(
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(taskmodel[index].time),
                            Text(taskmodel[index].ust),
                          ],
                        ),
                        title: Text(taskmodel[index].title),
                        subtitle: Text(taskmodel[index].category),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                icon: Icon(Icons.star_outline),
                                onPressed: () {}),
                            PriorityBall(
                              colour: taskmodel[index].color,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget slideRightBackground() {
    return Container(
      color: Colors.green,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.check,
              color: Colors.white,
            ),
            Text(
              " Done",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: Colors.red,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " Remove",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}
