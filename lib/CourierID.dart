import 'package:flutter/material.dart';

class CourierID extends StatefulWidget {
  @override
  _CourierIDState createState() => _CourierIDState();
}

class _CourierIDState extends State<CourierID> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CourierID:#00978KJH3e5',
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
        color: Colors.grey[100],
        width: width,
        height: height,
        child: ListView(
          children: [
            Container(
              width: width,
              height: height * 0.215,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                  ]),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Courier',
                      style: TextStyle(color: Colors.black87, fontSize: 13),
                    ),
                    subtitle: Text(
                      'Pickup Organized',
                      style: TextStyle(color: Colors.red, fontSize: 11),
                    ),
                    trailing: Text('Sep 18,2020.09:48pm',
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 13)),
                  ),
                  ListTile(
                    title: Text('From:Martha Chesingangdon',
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 12)),
                    subtitle: Text('To:Alex Xavier',
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 12)),
                    trailing: Text(
                      '\$10.00',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width * 0.9,
              height: height * 0.5,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                  ],
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/map.png',
                      ),
                      fit: BoxFit.cover)),
              // child: Image.asset(
              //   'assets/images/map.png',
              //   fit: BoxFit.fitWidth,
              // ),
            ),
            GestureDetector(
              onTap: () {
                print("next");
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CourierInfo()));*/
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.pink[50],
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.pink[100],
                          offset: Offset(0, 0)),
                    ],
                    borderRadius: BorderRadius.circular(12)),
                width: width,
                child: Text(
                  'Track My Courier',
                  style: TextStyle(
                      color: Colors.pink, fontSize: 16, letterSpacing: 1),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: width,
              height: height * 0.13,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                  ]),
              child: ListTile(
                leading: Container(
                  width: width * 0.13,
                  height: height * 0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/delboy.jpeg',
                          ))),
                  // child: Image.asset(
                  //   'assets/images/profile2.jpeg',
                  //   fit: BoxFit.fitHeight,
                  // ),
                ),
                title: Text(
                  'Delivery Boy',
                  style: TextStyle(color: Colors.black45, fontSize: 11),
                ),
                subtitle: Text(
                  'Tom Harviq',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  width: width * 0.13,
                  height: height * 0.08,
                  child: Image.asset(
                    'assets/images/phone.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
