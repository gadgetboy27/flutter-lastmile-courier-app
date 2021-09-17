import 'package:flutter/material.dart';

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  double mon = 10.00;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: width,
            height: height * 0.28,
            margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: width,
                  height: height * 0.214,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Courier',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Pickup Organized',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      ListTile(
                        title: Text('From:Martha Chesingangdon',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        subtitle: Text('To:Alex Xavier',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        trailing: Text(
                          '\$10.00',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width,
                  height: height * 0.0245,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextButton(
                      onPressed: () {
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourierTracking()));*/
                      },
                      child: Text(
                        'Track your Courier',
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.28,
            margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: width,
                  height: height * 0.214,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Courier',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Pickup Organized',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      ListTile(
                        title: Text('From:Martha Chesingangdon',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        subtitle: Text('To:Alex Xavier',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        trailing: Text(
                          '\$10.00',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width,
                  height: height * 0.0245,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextButton(
                      onPressed: () {
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourierTracking()));*/
                      },
                      child: Text(
                        'Track your Courier',
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.28,
            margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: width,
                  height: height * 0.214,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Courier',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Pickup Organized',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      ListTile(
                        title: Text('From:Martha Chesingangdon',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        subtitle: Text('To:Alex Xavier',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        trailing: Text(
                          '\$10.00',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width,
                  height: height * 0.0245,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextButton(
                      onPressed: () {
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourierTracking()));*/
                      },
                      child: Text(
                        'Track your Courier',
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.28,
            margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: width,
                  height: height * 0.214,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Courier',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Pickup Organized',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      ListTile(
                        title: Text('From:Martha Chesingangdon',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        subtitle: Text('To:Alex Xavier',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        trailing: Text(
                          '\$10.00',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width,
                  height: height * 0.0245,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextButton(
                      onPressed: () {
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourierTracking()));*/
                      },
                      child: Text(
                        'Track your Courier',
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.28,
            margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: width,
                  height: height * 0.214,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Courier',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Pickup Organized',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      ListTile(
                        title: Text('From:Martha Chesingangdon',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        subtitle: Text('To:Alex Xavier',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 15)),
                        trailing: Text(
                          '\$10.00',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width,
                  height: height * 0.0245,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextButton(
                      onPressed: () {
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourierTracking()));*/
                      },
                      child: Text(
                        'Track your Courier',
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
