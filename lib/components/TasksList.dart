import 'package:flutter/material.dart';
import 'package:todo_app/components/TaskTile.dart';
import 'package:provider/provider.dart';
import '../models/Task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, data, child) => ListView.builder(
        itemBuilder: ((context, index) {
          final task = data.tasksList[index];
          return TaskTile(
              text: task.name,
              isChecked: task.isDone,
                checkBoxCallback: (checkBoxState){
                data.updateTask(index);
              },
              longPressCallback: (){data.deleteTask(index);},
              );
        }),
        itemCount: data.itemCount,
      ),
    );
  }
}
