import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'Task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasksList = [
      Task(name: 'Buy Milk'),
      Task(name: 'Have a bath'),
      Task(name: 'Buy groceries'),
      Task(name: 'Pay the vendors in time'),
      Task(name: 'Drink some water'),
      Task(name: 'Go for a walk'),
    ];

  int get itemCount{
    return _tasksList.length;
  }

  UnmodifiableListView<Task> get tasksList{
    return UnmodifiableListView(_tasksList);
  }

  void addTask(String taskText){
      final task = Task(name: taskText);
      _tasksList.add(task);
      notifyListeners(); 
    }

  void updateTask(int index){
    _tasksList[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index){
    _tasksList.removeAt(index);
    notifyListeners();
  }

}