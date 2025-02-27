import 'package:flutter/material.dart';
import 'package:today_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575) ,
      child: Container(
        padding: EdgeInsets.all(20.0),
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
            Text('Add Task',
             textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                    //print(newText);
                    newTaskTitle = newText;
              },
            ),
            FlatButton(
                child: Text('Add',
                style: TextStyle(
                    color: Colors.white,
                ),
                ),
                color: Colors.lightBlueAccent,
              onPressed: (){
                  //print(newTaskTitle);
                  addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
