import 'package:flutter/material.dart';

class TaskModel {
  final String title;
  final String time;
  final String ust;
  final String category;
  final color;

  TaskModel({
    this.title,
    this.time,
    this.ust,
    this.category,
    this.color,
  });
}

List<TaskModel> taskmodel = [
  TaskModel(
    title: "Meeting with client",
    category: "Official",
    ust: "AM",
    time: "10:00",
    color: Colors.red
  ),
  TaskModel(
    title: "Meet Joseph",
    category: "Friend",
    ust: "PM",
    time: "8:00",
    color: Colors.blue
  ),
  TaskModel(
    title: "Go Pharmacy",
    category: "Health",
    ust: "AM",
    time: "10:00",
    color: Colors.green
  ),
  TaskModel(
    title: "Call Mom",
    category: "Family",
    ust: "AM",
    time: "10:00",
    color: Colors.red
  ),
  TaskModel(
    title: "Meeting with client",
    category: "Official",
    ust: "AM",
    time: "10:00",
    color: Colors.blue
  ),
 
  TaskModel(
    title: "Meeting with client",
    category: "Official",
    ust: "AM",
    time: "10:00",
    color: Colors.blue
  ),
];
