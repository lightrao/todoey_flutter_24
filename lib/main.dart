import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_24/models/task_data.dart';
import 'package:todoey_flutter_24/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
