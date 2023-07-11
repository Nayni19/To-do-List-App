import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF331D2C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                    child: Icon(Icons.list, size: 40, color: Color(0xFF331D2C))),
                SizedBox(height: 20),
                Text('Todoey', 
                style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text('12 Tasks', style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300
                ),)
                
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
            ),
          )
        ],
      ),
    );
  }
}
