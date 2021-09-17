// import 'package:doorpost/Login.dart';
import 'package:flutter/material.dart';
import 'package:doorpost/FirstScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doorpost',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => FirstScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red[900],
          body: Center(
            child: Container(
              child: SpinKitCubeGrid(
                color: Colors.white,
                size: 170,
              ),
            ),
          ),
        ));
  }
}
