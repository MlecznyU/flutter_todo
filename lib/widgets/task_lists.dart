import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_data.dart';
import 'package:flutter_todo/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: Provider.of<TaskData>(context).getTaskDone(index),
          textOfTask: Provider.of<TaskData>(context).getTaskName(index),
          checkboxCallback: (checkboxState) {
            Provider.of<TaskData>(context, listen: false).updateTask(index);
          }, onLongPress: (){
          Provider.of<TaskData>(context, listen: false).deleteTask(index);
        },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasksLength,
    );
  }
}
