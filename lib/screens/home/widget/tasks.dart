// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:organixo/models/task_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:organixo/screens/details/widgets/detail.dart';
import 'package:get/get.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTask();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
            itemCount: tasksList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => tasksList[index].isLast
                ? _buildAddTask()
                : _buildTask(context, tasksList[index])));
  }

  Widget _buildAddTask() {
    return InkWell(
      onTap: () {
        
      },
      child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(20),
          dashPattern: [10, 10],
          color: Colors.black87,
          child: Center(
            child: Text(
              '+ Add',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: ((context) => DetailPage(task: task))));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: task.bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(
            task.iconData,
            color: task.iconColor,
            size: 35,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            task.title!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _buildTaskStatus(
                  Colors.white, task.iconColor!, '${task.left} left'),
              SizedBox(
                width: 10,
              ),
              _buildTaskStatus(
                  task.btnColor!, task.iconColor!, '${task.done} done'),
            ],
          )
        ]),
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txtColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(
          color: txtColor,
        ),
      ),
    );
  }
}
