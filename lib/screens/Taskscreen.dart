import 'package:flutter/material.dart';
import 'package:todo_app/screens/AddTaskScreen.dart';
import '../components/TasksList.dart';
import '../components/Icon.dart';
import '../constants.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTask(),
                  )));
        },
        backgroundColor: primaryColor,
        icon: Icon(Icons.add),
        label: Text('Add Task'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleIcon(),
                SizedBox(height: 20),
                Text('Todoey', style: kHeaderStyle),
                SizedBox(height: 10),
                Text('12 Tasks', style: kSubHeaderStyle)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: kBottomContainerStyle,
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
