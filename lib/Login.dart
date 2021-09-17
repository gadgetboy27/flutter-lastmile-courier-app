import 'package:doorpost/Signup.dart';
import 'package:flutter/material.dart';
import 'package:doorpost/SecondScreen.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //String _phNo = '+91';
  TextEditingController _namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        //color: Colors.orange[200],
        width: width,
        height: height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: DiagonalPathClipperOne(),
                  child: Container(
                    height: height * 0.45,
                    child: Image.asset(
                      'assets/images/package.jpg',
                      fit: BoxFit.fitHeight,
                      color: Colors.black54,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Container(
                    child: Text("Doorpost",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600)),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login with your',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Phone Number'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              height: 4,
              width: width,
              margin: EdgeInsets.only(right: width * 0.7, left: width * 0.07),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
              ),
            ),
            /*  SizedBox(
              height: 30.0,
            ), */
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.fromLTRB(12, 20, 0, 10),
              child: Text(
                'Enter Your Number',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: width * 0.2,
                    height: height * 0.08,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              // blurRadius: 2,
                              offset: Offset(0, 0))
                        ]),
                    child: CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'IN',
                      favorite: ['+91', 'IN'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed. // okay got it sir////sir how do i get the profile cropped using contaner // where is profile pic
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ), //sir I think i have used network image for that // where is that widget in which file yes sir one sec
                  ),
                  /*  child: DropdownButton<String>(
                      value: _phNo,
                      underline: Container(width: width / 6),
                      icon: Icon(Icons.arrow_drop_down),
                      items: <String>['+44', '+89', '+91', '+57']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (String ph) => _phNo = ph,
                    ), */

                  Container(
                    width: width * 0.65,
                    height: height * 0.08,
                    margin: EdgeInsets.fromLTRB(7, 0, 10, 10),
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
                          hintText: 'Enter your Number',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // print("Confirm");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(color: Colors.red, boxShadow: [
                  BoxShadow(
                      blurRadius: 2, color: Colors.red, offset: Offset(0, 0))
                ]),
                width: width * 0.6,
                child: Text(
                  'Login'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1.9,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              // direction: Axis.horizontal,
              children: [
                Container(
                  // height: height * 0.1,
                  padding: const EdgeInsets.all(8.0),
                  margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                          color: Colors.red[400],
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
