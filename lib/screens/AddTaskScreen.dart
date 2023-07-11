import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/constants.dart';
import '../models/Task_data.dart';
import '../models/Task.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});
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
                  Provider.of<TaskData>(context, listen: false).addTask(taskTitle);
                  Navigator.pop(context);
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
