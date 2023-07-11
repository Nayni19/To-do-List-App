import 'package:flutter/material.dart';
import './TaskCheckbox.dart';

class TaskTile extends StatefulWidget {
  final String text;
  const TaskTile({super.key, required this.text});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void setCheck( bool checkBoxState){
    setState(() { isChecked = checkBoxState; });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: TextStyle(fontSize: 20, decoration: isChecked? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked: isChecked, onPress: setCheck),
    );
  }
}

