import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task List'),
      trailing: Icon(Icons.check_box_sharp),
    );
  }
}