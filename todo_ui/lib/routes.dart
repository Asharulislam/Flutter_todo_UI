import 'package:flutter/material.dart';
import 'package:todo_ui/Screens/AddTask.dart';
import 'package:todo_ui/Screens/HomePage.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  AddTask.routeName:(context) => AddTask(),
};
