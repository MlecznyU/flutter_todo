import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String textOfTask;
  final Function checkboxCallback;
  final Function onLongPress;
  TaskTile({
    @required this.isChecked,
    @required this.textOfTask,
    @required this.checkboxCallback,
    @required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
        title: Text(
          textOfTask,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        )
    );
  }
}
