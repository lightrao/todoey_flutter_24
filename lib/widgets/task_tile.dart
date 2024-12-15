import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback});

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallback(newValue);
        },
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
