import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:doorpost/Home.dart';
import 'package:doorpost/Delivery.dart';
import 'package:doorpost/Settings.dart';
// import 'package:outline_material_icons/outline_material_icons.dart';

class SecondScreen extends StatefulWidget {
  // no underscore in class name
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _currentIndex = 0;
  final _screenSel = [HomeSt(), Delivery(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screenSel[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red[600],
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              backgroundColor: Colors.red,
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_in_ar),
                backgroundColor: Colors.red,
                label: 'Delivery'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                backgroundColor: Colors.red,
                label: 'Settings')
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
