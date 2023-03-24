// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:organixo/screens/details/widgets/bottomnav.dart';
import 'package:organixo/screens/home/widget/GoPremium.dart';
import 'package:organixo/screens/home/widget/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Tasks",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Tasks())
        ],
      ),
      bottomNavigationBar: buildbottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 0,
        backgroundColor: Colors.black87,
        onPressed: () {},
        child: Icon(
          Icons.add_rounded,
          size: 35,
        ),
      ),
    );
  }

  // Widget _buildbottomNavigationBar() {
  //   int _currentIndex = 0;
  //   return Container(
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(30),
  //             topRight: Radius.circular(30),
  //           ),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Colors.grey.withOpacity(0.2),
  //               spreadRadius: 5,
  //               blurRadius: 10,
  //             )
  //           ]),
  //       child: ClipRRect(
  //         borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(30),
  //           topRight: Radius.circular(30),
  //         ),
  //         // ignore: prefer_const_literals_to_create_immutables
  //         child: BottomNavigationBar(
  //             backgroundColor: Colors.white,
  //             showSelectedLabels: true,
  //             showUnselectedLabels: true,
  //             selectedItemColor: Colors.black,
  //             unselectedItemColor: Colors.grey.withOpacity(0.8),
  //             items: [
  //               BottomNavigationBarItem(
  //                   label: 'Home', icon: Icon(Icons.home_rounded, size: 30)),
  //               BottomNavigationBarItem(
  //                   label: 'Profile',
  //                   icon: Icon(Icons.person_rounded, size: 30)),
  //             ]),
  //       ));
  // }

  AppBar _buildAppbar() {
    List<String> PopupMenu = ["Edit Profile", 'Theme', 'Flaana', 'Dhimkana'];
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: const EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image.asset('assets/images/image1.jpg'),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Hi, Saksham!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              // fontFamily: ,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () {
                         
          },
        ),
      ],
    );
  }
}
