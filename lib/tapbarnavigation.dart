import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/camerascreen.dart';
import 'package:flutter_application_1/dashboardscreen.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/settingsscreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TapBarNatvigation extends StatefulWidget {
  const TapBarNatvigation({Key? key}) : super(key: key);

  @override
  State<TapBarNatvigation> createState() => _TapBarNatvigationState();
}

class _TapBarNatvigationState extends State<TapBarNatvigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DashboardScreen(),
    CameraScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color(0xFF111111),
          shadowColor: Colors.transparent,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              /*
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(0)),*/
              child: IconButton(
                icon: const Icon(Icons.messenger_outline, size: 23),
                tooltip: 'Open Messages',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                padding: EdgeInsets.all(2),
                child: const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D4D03AQF_cgwq3RfEpg/profile-displayphoto-shrink_800_800/0/1670870067517?e=1692835200&v=beta&t=8wCYvIkYCOuqOpn06Y57HG0kVbzISLvlkjaaVaNwYB8'),
                  backgroundColor: Colors.transparent,
                )),
          ]),
      backgroundColor: const Color(0xFF111111),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: GNav(
        backgroundColor: const Color(0xFF151515),
        color: Colors.white70,
        activeColor: Colors.white,
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.dashboard,
            text: "Overview",
          ),
          GButton(
            icon: Icons.camera_outlined,
            text: "Camera",
          ),
          GButton(
            icon: Icons.settings,
            text: "Settings",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
