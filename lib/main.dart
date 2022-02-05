import 'package:flutter/material.dart';
import 'package:my_todo/screens/add_task_screen.dart';
import 'package:my_todo/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Todo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
      routes: {
        AddTaskScreen.routeName: (context) => AddTaskScreen(),
      },
    );
  }
}
