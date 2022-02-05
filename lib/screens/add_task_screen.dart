import 'package:flutter/material.dart';
import 'package:my_todo/models/tasks.dart';

class AddTaskScreen extends StatefulWidget {
  static const routeName = "/add-task";
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

String _taskName = "";
Tasks tasks=Tasks();

_onSave() {
  print("Task name: $_taskName");
  tasks.title = _taskName;
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              autofocus: true,
              onSubmitted: (value) {
                setState(() {
                  _taskName = value;
                });
                _onSave();
                Navigator.of(context).pop(tasks);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: ElevatedButton(
              onPressed: () => _onSave,
              child: const Text("Save"),
            ),
          ),
        ],
      ),
    );
  }
}
