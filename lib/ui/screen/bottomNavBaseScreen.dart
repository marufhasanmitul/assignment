

import 'package:assignment/ui/screen/CompletedTaskScreen.dart';
import 'package:assignment/ui/screen/cancelTaskScreen.dart';
import 'package:assignment/ui/screen/inProgressTaskScreen.dart';
import 'package:assignment/ui/screen/newTaskScreen.dart';
import 'package:flutter/material.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {

  int _selectedScreenIndex=0;

  final List<Widget>_Screens=[
    NewTaskScreen(),
    InProgressTaskScreen(),
    CancelTaskScreen(),
    CompletedTaskScreen()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: (index){
          _selectedScreenIndex=index;
          if(mounted){
            setState(() {});
          }
        },
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
        ),
        showSelectedLabels: true,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_tree), label: "New Task"),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree),label: "inprogress"),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree),label: "cncel"),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree),label: "completed"),
        ],
      ),
    );
  }
}
