import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback,
      required this.longPressCallback});

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallback();
      },
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
