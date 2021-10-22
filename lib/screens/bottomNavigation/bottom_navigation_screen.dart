import 'package:flutter/material.dart';
import 'package:linkedin_clone/models/navigation_bloc.dart';
import 'package:linkedin_clone/screens/bottomNavigation/components/header_layer.dart';
import 'package:linkedin_clone/screens/jobs/jobs_screen.dart';
import 'package:linkedin_clone/screens/myNetwork/my_network_screen.dart';
import 'package:linkedin_clone/screens/myProfile/my_profile_screen.dart';
import 'package:linkedin_clone/screens/notification/notification_screen.dart';
import 'package:linkedin_clone/screens/post/post_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _bottomNavItemIndex = 0;
  late NavigationBloc _navigationBloc;

  @override
  void initState() {
    _navigationBloc = NavigationBloc();
    super.initState();
  }

  @override
  void dispose() {
    _navigationBloc.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) => setState(() {
        _bottomNavItemIndex = index;
        _navigationBloc.pickItem(index);
      });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HeaderLayer(),
        body: StreamBuilder<NavBarItem>(
          stream: _navigationBloc.navigationSubject,
          initialData: _navigationBloc.defaultItem,
          builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
            switch (snapshot.data) {
              case NavBarItem.Profile:
                return MyProfileScreen();
              case NavBarItem.MyNetwork:
                return MyNetworkScreen();
              case NavBarItem.Post:
                return PostScreen();
              case NavBarItem.Notification:
                return NotificationScreen();
              case NavBarItem.Jobs:
                return JobsScreen();
              default:
                return MyProfileScreen();
            }
          },
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
              icon: Icon(Icons.home_rounded),
              label: 'My Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.escalator_warning),
              label: 'My Network',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_upload),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work_rounded),
              label: 'Jobs',
            ),
          ],
        ),
      ),
    );
  }
}
