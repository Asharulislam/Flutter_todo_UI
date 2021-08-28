import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/Widgets/Appbar.dart';
import 'package:todo_ui/Widgets/Button.dart';
import 'package:todo_ui/Widgets/PriorityBalls.dart';

class AddTask extends StatelessWidget {
  static const routeName = "addtask";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TopAppBar(
          text: "New Task",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: decorationTextField("Task Name"),
                  ),
                  TextField(
                    maxLines: null,
                    decoration: decorationTextField("Description"),
                  ),
                  TextField(
                    decoration: decorationTextField("Category"),
                  ),
                  TextField(
                    decoration: decorationTextField("Pick Date & Time"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 10, right: 12),
                    child: Text(
                      "Priority",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PriorityBall(colour: Colors.red),
                      PriorityBall(colour: Colors.yellow),
                      PriorityBall(colour: Colors.blue),
                      PriorityBall(colour: Colors.green),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Button(
              text: "ADD",
              onpress: () {},
            ),
          ),
        ],
      ),
    );
  }

// text field decoration
  InputDecoration decorationTextField(String labletext) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[300], width: 0.0),
      ),
      labelText: labletext,
    );
  }
}

