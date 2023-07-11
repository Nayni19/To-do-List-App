import 'package:flutter/material.dart';
import '../constants.dart';

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    Key? key,
    required this.isChecked, required this.onPress,
  }) : super(key: key);

  final bool isChecked;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return Checkbox(
        onChanged: (bool? value) {onPress(value);},
        value: isChecked,
        checkColor: secondaryColor,
        fillColor: MaterialStateProperty.resolveWith(getPrimaryColor)
        );
  }
}
