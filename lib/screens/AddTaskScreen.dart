import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class AddTask extends StatelessWidget {
  final Function getText;
  const AddTask({super.key, required this.getText});
  @override
  Widget build(BuildContext context) {

    String taskTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: kBottomContainerStyle,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add a Task',
                textAlign: TextAlign.center,
                style: kTaskHeaderStyle,
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: kTextFieldStyle,
                onChanged: (value) => taskTitle = value,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: (){
                  getText(taskTitle);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 25),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith(getPrimaryColor),
                    foregroundColor:
                        MaterialStateProperty.resolveWith(getSecondaryColor)),
              ),
            ]),
      ),
    );
  }
}
