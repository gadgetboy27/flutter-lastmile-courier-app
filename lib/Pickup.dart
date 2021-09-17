import 'package:doorpost/CourierInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:dotted_line/dotted_line.dart';

class Pickup extends StatefulWidget {
  @override
  _PickupState createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _contact = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pickup Point',
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: width,
            height: height,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0, 0))
                            ]),
                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.all(5.0),
                        height: height * 0.07,
                        width: width * 0.7,
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                            ),
                            Container(
                              width: width * 0.6,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0, 0))
                            ]),
                        padding: const EdgeInsets.all(5.0),
                        margin: const EdgeInsets.all(10.0),
                        height: height * 0.07,
                        width: width * 0.13,
                        child: Icon(
                          Icons.my_location,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ), // where you want your buttom
                ),
                Container(
                  width: width,
                  height: height * 0.5,
                  child: Image.asset(
                    'assets/images/maps.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  //margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)),
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
                        style: TextStyle(fontSize: 12),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(12.0),
                        alignment: Alignment.bottomLeft,
                        child: TextField(
                          controller: _name,
                          style: TextStyle(fontSize: 11),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Full Name',
                            fillColor: Colors.white,
                            focusColor: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      /* DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.grey,
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapColor: Colors.transparent,
                        dashGapRadius: 0.0,
                      ),*/
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        'Contact Number',
                        style: TextStyle(fontSize: 12),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(12.0),
                        alignment: Alignment.bottomLeft,
                        child: TextField(
                          controller: _contact,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Contact Number',
                            fillColor: Colors.white,
                            focusColor: Colors.grey,
                          ),
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                )
                //here sir
                ,
                SizedBox(
                  height: height * 0.1, // t
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print("next");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CourierInfo()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(color: Colors.redAccent, boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    color: Colors.redAccent,
                    offset: Offset(0, 0))
              ]),
              width: width,
              child: Text(
                'Next'.toUpperCase(),
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 1.9),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//

/*class NewScreen extends StatefulWidget {
// this
  final String name;
  final String contact;
  NewScreen({@required this.name, this.contact});

// to this .. called constructor to pass the data okay //yes sir
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Screen"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('name : ${widget.name}'),
            Text('contact Number : ${widget.contact}'), 
          ],
        ),
      ),
    );
  }
}*/
