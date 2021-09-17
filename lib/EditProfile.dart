import 'package:doorpost/ForgotPW.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _phController = TextEditingController();
  String _default = 'India', _phNo = '+91';
  File _image;

  Future getImage() async {
    var image = await ImagePickerGC.pickImage(
      context: context,
      source: ImgSource.Both,
      cameraIcon: Icon(
        Icons.add,
        color: Colors.red,
      ), //cameraIcon and galleryIcon can change. If no icon provided default icon will be present
    );
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('EditProfile'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[200],
        width: width,
        height: height,
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 145, vertical: 20),
                width: width * 0.17,
                height: width * 0.17,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: _image == null
                            ? AssetImage(
                                'assets/images/profile2.jpeg',
                              )
                            : FileImage(
                                _image,
                              )),
                    borderRadius: BorderRadius.circular(width * 0.065),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 2,
                          offset: Offset(0, 0))
                    ]),
              ),
            ),
            GestureDetector(
              onTap: getImage,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Change Profile Picture',
                  style: TextStyle(color: Colors.blue, fontSize: 13),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.fromLTRB(12, 20, 0, 10),
              child: Text(
                'Full Name',
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
                    hintText: 'Enter your Full Name', border: InputBorder.none),
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
                controller: _controller,
                decoration: InputDecoration(
                    hintText: 'Enter your Email ID', border: InputBorder.none),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.fromLTRB(12, 20, 0, 10),
              child: Text(
                'Select Country',
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
              child: DropdownButton<String>(
                  isExpanded: true,
                  value: _default,
                  underline: Container(width: width),
                  icon: Icon(Icons.arrow_drop_down),
                  items: <String>['USA', 'Korea', 'India', 'UK']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String text) {
                    setState(() {
                      _default = text;
                    });
                  }),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.fromLTRB(12, 20, 0, 10),
              child: Text(
                'Enter Your Number',
                style: TextStyle(fontSize: 12),
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
                              blurRadius: 2,
                              offset: Offset(0, 0))
                        ]),
                    child: DropdownButton<String>(
                      value: _phNo,
                      underline: Container(width: width / 6),
                      icon: Icon(Icons.arrow_drop_down),
                      items: <String>['+44', '+89', '+91', '+57']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (String ph) => _phNo = ph,
                    ),
                  ),
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
                      controller: _phController,
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ForgotPW()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0,
                          color: Colors.red,
                          offset: Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.circular(7)),
                width: width * 0.6,
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, letterSpacing: 1.9),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(90, 0, 10, 10),
              child: Row(
                children: [
                  Text(
                    'Already have an account!',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
