import 'package:flutter/foundation.dart';
import 'package:flutter_todo/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: "task1"),
    Task(name: "task2"),
    Task(name: "task3"),
  ];

  int get tasksLength=>_tasks.length;
  bool getTaskDone(int index)  {
    return _tasks[index].isDone;}
  String getTaskName(int index)  {
    return _tasks[index].name;}

  void addTask(String taskName){
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }
  void updateTask(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }
  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}