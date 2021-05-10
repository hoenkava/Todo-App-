import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallBack;
  TaskTile({this.taskTitle, this.isChecked, this.checkBoxCallback, this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// // int run = 0;

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;

//   void checkBoxCallBack(bool checkBoxState) {
//     print("Inside State Setter");
//     setState(() {
//       isChecked = checkBoxState;
//       print(isChecked);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // print("Run ${run}");
//     // run++;
//     return ListTile(
//       title: Text(
//         'This is a Task',
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: TaskCheckBox(isChecked, checkBoxCallBack),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox(this.checkBoxState, this.toggleCheck);
//   final bool checkBoxState;
//   final Function toggleCheck;

//   @override
//   Widget build(BuildContext context) {
//     print("Inside Taskbox with value $checkBoxState");
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkBoxState,
//       onChanged: toggleCheck,
//     );
//   }
// }
