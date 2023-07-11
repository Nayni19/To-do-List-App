import 'package:flutter/material.dart';
import 'package:todo_app/components/TaskTile.dart';
import '../models/Task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, required this.tasks});
  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return TaskTile(text: widget.tasks[index].name, isChecked: widget.tasks[index].isDone, checkBoxCallback: (checkBoxState){
        setState(() {
        widget.tasks[index].toggleDone();
      }
      );
      }
      );
    }
    ), itemCount: widget.tasks.length,
    );
  }
}