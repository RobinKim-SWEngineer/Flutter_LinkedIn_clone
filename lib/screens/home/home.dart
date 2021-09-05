import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/home/components/header_layer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottomNavItemIndex = 0;
  void _onItemTapped(int index) => setState(() {
        _bottomNavItemIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HeaderLayer(),
            Divider(thickness: 1.5),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
          showUnselectedLabels: true,
          currentIndex: _bottomNavItemIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.escalator_warning), label: 'My Network'),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_upload), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.work_rounded), label: 'Jobs'),
          ],
        ),
      ),
    );
  }
}
