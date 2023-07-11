import 'package:flutter/material.dart';
import 'package:todo_app/screens/AddTaskScreen.dart';
import '../components/TasksList.dart';
import '../components/Icon.dart';
import '../constants.dart';
import '../models/Task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
List<Task> tasksList = [
      Task(name: 'Buy Milk'),
      Task(name: 'Go to lamington'),
      Task(name: 'Buy groceries'),
      Task(name: 'Pay the vendors in time'),
      Task(name: 'Buy Milk'),
    ];

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
                    child: AddTask(getText: (String val) {
                      print(val);
                      setState(() {
                        tasksList.add(Task(name: val));
                      });
                      Navigator.pop(context);
                    }),
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
              children: [
                CircleIcon(),
                SizedBox(height: 20),
                Text('Todoey', style: kHeaderStyle),
                SizedBox(height: 10),
                Text('${tasksList.length} Tasks', style: kSubHeaderStyle),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: kBottomContainerStyle,
              child: TasksList(
                tasks: tasksList,
              ),
            ),
          )
        ],
      ),
    );
  }
}
