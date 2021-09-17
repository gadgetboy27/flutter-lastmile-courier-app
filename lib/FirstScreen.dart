import 'package:doorpost/Signup.dart';
import 'package:flutter/material.dart';
import 'package:doorpost/Login.dart';
//import 'package:doorpost/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(title: Text('Welcome')),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: height * 0.55,
                    width: width,
                    child: Image.asset(
                      'assets/images/delivery_truck.jpeg',
                      height: height * 0.7,
                      width: width,
                      semanticLabel: 'Doorpost',
                      fit: BoxFit.contain,
                    )),
                SizedBox(height: 8.0),
                Text('Courier Anywhere',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24.0)),
                SizedBox(height: 8.0),
                Container(
                  alignment: Alignment.center,
                  height: 5,
                  width: width,
                  margin:
                      EdgeInsets.only(right: width * 0.4, left: width * 0.4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Set up your location \nand send your parcel anywhere',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                // SizedBox(
                //   height: 10.0,
                // ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Login()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                      ),
                      // Icon(Icons.arrow_upward, color: Colors.red)
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Signup()),
                          );
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
