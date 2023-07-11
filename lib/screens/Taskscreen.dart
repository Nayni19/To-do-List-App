import 'package:flutter/material.dart';
import '../components/TasksList.dart';
import '../components/Icon.dart';
import '../constants.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton(onPressed: null, backgroundColor: primaryColor, child: Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleIcon(),
                SizedBox(height: 20),
                Text('Todoey', 
                style: kHeaderStyle
                ),
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




