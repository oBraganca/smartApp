import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/camerascreen.dart';
import 'package:flutter_application_1/dashboardscreen.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/settingsscreen.dart';


class TapBarNatvigation extends StatefulWidget {
  const TapBarNatvigation({Key? key}) : super(key: key);

  @override
  State<TapBarNatvigation> createState() => _TapBarNatvigationState();
}

class _TapBarNatvigationState extends State<TapBarNatvigation> {

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DashboardScreen(),
    CameraScreen(),
    SettingsScreen(),
  ];

  int _selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color(0xFF090909),
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
      backgroundColor: const Color(0x13092807),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mic),
        backgroundColor: Color.fromRGBO(79, 70, 229, 1),

        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(17, 17, 17, 1),
        height: 75,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=HomeScreen();
                          _selectedIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: _selectedIndex == 0 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: _selectedIndex == 0 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white

                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=DashboardScreen();
                          _selectedIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.layers,
                            color: _selectedIndex == 1 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                                color: _selectedIndex == 1 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white

                            ),
                          )
                        ],
                      ),
                    )
                  ]
              ),
              Row(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=CameraScreen();
                          _selectedIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera,
                            color: _selectedIndex == 2 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white,
                          ),
                          Text(
                            'Scenes',
                            style: TextStyle(
                                color: _selectedIndex == 2 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white

                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=SettingsScreen();
                          _selectedIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: _selectedIndex == 3 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                color: _selectedIndex == 3 ? Color.fromRGBO(175, 170, 255, 1) : Colors.white

                            ),
                          )
                        ],
                      ),
                    )
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
