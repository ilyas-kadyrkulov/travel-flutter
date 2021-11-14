import 'package:flutter/material.dart';
import 'package:travel/components/second.dart';
import 'package:travel/components/first.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel/screens/profile_screen.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    First(),
    Second(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: appBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: SizedBox(
        height: 60.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.hotel),
              label: 'Hotel',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.compass),
              label: 'Destinations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
            ),
          ],
          selectedLabelStyle: TextStyle(fontSize: 15),
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue[400],
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          iconSize: 20.0,
          elevation: 0.0,
          backgroundColor: Colors.grey[350],
        ),
      ),
    );
  }
}
