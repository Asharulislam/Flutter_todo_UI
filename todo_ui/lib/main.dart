import 'package:flutter/material.dart';
import 'package:todo_ui/Screens/HomePage.dart';
import 'package:todo_ui/Screens/Login.dart';
import 'package:todo_ui/Utils/AppColors.dart';
import 'package:todo_ui/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.ColorPrimary,
      ),
      home: Login(),
      routes: routes,
    );
  }
}


