import 'package:flutter/material.dart';

class buildbottomNavigationBar extends StatefulWidget {
  const buildbottomNavigationBar({super.key});

  @override
  State<buildbottomNavigationBar> createState() =>
      _buildbottomNavigationBarState();
}

class _buildbottomNavigationBarState extends State<buildbottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
              )
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (int newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              backgroundColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey.withOpacity(0.8),
              items: [
                BottomNavigationBarItem(
                    label: 'Home', icon: Icon(Icons.home_rounded, size: 30)),
                BottomNavigationBarItem(
                    label: 'Report',
                    icon: Icon(Icons.assessment_rounded, size: 30)),
              ]),
        ));
  }
}
