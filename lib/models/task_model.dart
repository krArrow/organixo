import 'package:organixo/constants/colors.dart';
import 'package:flutter/material.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  List<Map<String, dynamic>>? desc;
  bool isLast;
  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.desc,
      this.done,
      this.isLast = false});
  static List<Task> generateTask() {
    return [
      Task(
        desc: [
          {
            'time': '7:00 am',
            'title': 'Go for a walk',
            'slot': '7:00 am - 8:00 am',
            'tlcolor': cBlueDark,
            'bgcolor': cBlueLight,
          },
          {
            'time': '8:00 am',
            'title': 'Bring breads',
            'slot': '8:00 am - 8:30 am',
            'tlcolor': cBlueDark,
            'bgcolor': cBlueLight,
          },
          {
            'time': '10:00 am',
            'title': 'Complete the App',
            'slot': '10:00 am - 11:00 am',
            'tlcolor': cBlueDark,
            'bgcolor': cBlueLight,
          },
          {
            'time': '11:00 am',
            'title': '',
            'slot': '',
            'tlcolor': cBlueDark,
          },
          {
            'time': '12:00 pm',
            'title': '',
            'slot': '',
            'tlcolor': Colors.grey.withOpacity(0.3),
          },
          {
            'time': '1:00 pm',
            'title': 'Go to Doc',
            'slot': '9:00 am - 10:00 am',
            'tlcolor': cRedDark,
            'bgcolor': cRedLight,
          },
          {
            'time': '2:00 pm',
            'title': 'Complete the App',
            'slot': '10:00 am - 11:00 am',
            'tlcolor': cYellowDark,
            'bgcolor': cYellowLight,
          },
          {
            'time': '3 :00 pm',
            'title': 'Complete the App',
            'slot': '10:00 am - 11:00 am',
            'tlcolor': cYellowDark,
            'bgcolor': cYellowLight,
          }
        ],
        iconData: Icons.person_rounded,
        title: 'Personal',
        bgColor: cBlueLight,
        iconColor: cBlueDark,
        btnColor: cBlue,
        left: 3,
        done: 1,
      ),
      Task(
        iconData: Icons.person_rounded,
        title: 'Work',
        bgColor: cYellowLight,
        iconColor: cYellowDark,
        btnColor: cYellow,
        left: 1,
        done: 4,
      ),
      Task(
        iconData: Icons.person_rounded,
        title: 'Health',
        bgColor: cRedLight,
        iconColor: cRedDark,
        btnColor: cRed,
        left: 3,
        done: 1,
      ),
      Task(isLast: true)
    ];
  }
}
