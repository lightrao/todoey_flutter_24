import 'package:flutter/material.dart';
import 'package:todoey_flutter_24/models/task.dart';
import 'package:todoey_flutter_24/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk.'),
    Task(name: 'Buy eggs.'),
    Task(name: 'Buy breads.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (ctx, index) {
          return TaskTile(
              isChecked: tasks[index].isDone,
              taskTitle: tasks[index].name,
              checkBoxCallback: (bool checkBoxState) {
                setState(() {
                  tasks[index].toggleDone();
                });
              });
        });
  }
}
