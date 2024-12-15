import 'package:flutter/material.dart';
import 'package:todoey_flutter_24/models/task.dart';
import 'package:todoey_flutter_24/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
    required this.tasks,
  });

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (ctx, index) {
          return TaskTile(
              isChecked: widget.tasks[index].isDone,
              taskTitle: widget.tasks[index].name,
              checkBoxCallback: (bool checkBoxState) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              });
        });
  }
}
