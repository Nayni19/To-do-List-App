import 'package:flutter/material.dart';
import './TaskCheckbox.dart';


class TaskTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function checkBoxCallback;

  const TaskTile({super.key, required this.text, required this.isChecked, required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 20, decoration: isChecked? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked: isChecked, onPress: checkBoxCallback),
    );
  }
}