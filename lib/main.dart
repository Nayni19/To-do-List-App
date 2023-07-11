import 'package:flutter/material.dart';
import 'package:todo_app/models/Task_data.dart';
import 'package:todo_app/screens/Taskscreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
}
}