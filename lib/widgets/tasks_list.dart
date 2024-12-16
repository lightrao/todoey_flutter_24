import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_24/models/task_data.dart';
import 'package:todoey_flutter_24/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget? child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (ctx, index) {
              return TaskTile(
                  isChecked: taskData.tasks[index].isDone,
                  taskTitle: taskData.tasks[index].name,
                  checkBoxCallback: (bool checkBoxState) {
                    // Provider.of<TaskData>(context).tasks[index].toggleDone();
                  });
            });
      },
    );
  }
}
