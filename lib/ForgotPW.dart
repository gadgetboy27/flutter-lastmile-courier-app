import 'package:doorpost/SecondScreen.dart';
import 'package:flutter/material.dart';

class ForgotPW extends StatefulWidget {
  @override
  _ForgotPWState createState() => _ForgotPWState();
}

class _ForgotPWState extends State<ForgotPW> {
  TextEditingController _namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Forgot Password',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.grey[200],
          width: width,
          height: height,
          child: ListView(
            children: [
              Container(
                width: width,
                height: height * 0.3,
                margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
                child: Image.asset(
                  'assets/images/lock.png',
                  fit: BoxFit.contain,
                  color: Colors.grey,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.fromLTRB(12, 20, 0, 10),
                child: Text(
                  'Email ID',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                width: width,
                height: height * 0.08,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 2,
                          offset: Offset(0, 0))
                    ]),
                alignment: Alignment.topLeft,
                child: TextField(
                  controller: _namecontroller,
                  decoration: InputDecoration(
                      hintText: 'Enter your Email ID',
                      border: InputBorder.none),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0,
                            color: Colors.red,
                            offset: Offset(0, 0))
                      ],
                      borderRadius: BorderRadius.circular(7)),
                  width: width * 0.7,
                  child: Text(
                    'Verify My Account',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 1.9),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Please check your email, we will send one OTP code on your device.',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      );
  }
}
