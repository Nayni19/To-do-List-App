import 'package:flutter/material.dart';
import '../constants.dart';

class TaskTile extends StatelessWidget {
  final String text;
  const TaskTile({super.key, required this.text});
  Color getColor(Set<MaterialState> states) {
      return primaryColor;
    }

  @override
  Widget build(BuildContext context) {
    return ListTile(
          title:Text(text, style: TextStyle(fontSize: 20),),
          trailing: Checkbox(value: false, onChanged: null, checkColor: primaryColor,fillColor: MaterialStateProperty.resolveWith(getColor)),
        );
  }
}