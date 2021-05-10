import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/model/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding:
            EdgeInsets.only(top: 30.0, left: 35.0, right: 35.0, bottom: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              decoration: InputDecoration(
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.lightBlueAccent),
                  // ),
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.lightBlueAccent),
                  // ),
                  ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // InkWell(
            //   child: Text('Add'),
            //   onTap: () {
            //     print(newTaskTitle);
            //   },
            // ),
            ElevatedButton(
              child: Text('Add'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                textStyle: TextStyle(
                  fontSize: 18,
                ),
                minimumSize: Size(0, 50),
              ),
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
                // print(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
