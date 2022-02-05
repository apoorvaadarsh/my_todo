import 'package:flutter/material.dart';
import 'package:my_todo/models/tasks.dart';
import 'package:my_todo/screens/add_task_screen.dart';
import 'package:my_todo/widgets/tasks_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Tasks> taskitems = [];

  void goToAddTaskScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddTaskScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return TaskList();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => goToAddTaskScreen(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
