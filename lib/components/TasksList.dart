import 'package:flutter/material.dart';
import 'package:todo_app/components/TaskTile.dart';


class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(text: 'Buy Milk')
      ],
    );
  }
}