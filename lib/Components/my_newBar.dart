import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:leadmaster/pages/home_page.dart';
import 'package:leadmaster/pages/login_page.dart';
import 'package:leadmaster/pages/more_page.dart';
import 'package:leadmaster/pages/mywork_page.dart';
import 'package:leadmaster/pages/notification_page.dart';
import 'package:leadmaster/pages/signIn_page.dart';

class MyNewBar extends StatefulWidget{
  @override
  _MyNewBarState createState()=> _MyNewBarState();
}

class _MyNewBarState extends State<MyNewBar>{
  int currentIndex = 0;

  /*List listOfInt = [
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),Container(
      color: Colors.grey,
    ),Container(
      color: Colors.black,
    ),
  ];*/

  @override
  Widget build(BuildContext context){
    late Widget body;
    switch(currentIndex) {
      case 0:
        body = const HomePage();
        break;
      case 1:
        body = const MyWorkPage();
        break;
      case 2:
        body = const NotificationPage();
        break;
      case 3:
        body = const MorePage();
        break;
    }
    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.assignment_turned_in_rounded),
              title: Text('My Work')
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.circle_notifications),
              title: Text('Notifications')
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.pending_rounded),
              title: Text('More')
          )
        ],

      ),
    );
  }
}