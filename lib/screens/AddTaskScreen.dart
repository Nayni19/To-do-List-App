import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: kBottomContainerStyle,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: null,
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
