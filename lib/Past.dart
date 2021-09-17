import 'package:flutter/material.dart';

class Past extends StatefulWidget {
  @override
  _PastState createState() => _PastState();
}

class _PastState extends State<Past> {
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
            height: height * 0.27,
            margin: EdgeInsets.fromLTRB(15, 30, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.24,
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
                          'Delivery Completed',
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14)),
                        contentPadding: EdgeInsets.fromLTRB(6, 10, 4, 0),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.27,
            margin: EdgeInsets.fromLTRB(15, 30, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.24,
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
                          'Delivery Completed',
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14)),
                        contentPadding: EdgeInsets.fromLTRB(6, 10, 4, 0),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.27,
            margin: EdgeInsets.fromLTRB(15, 30, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.24,
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
                          'Delivery Completed',
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14)),
                        contentPadding: EdgeInsets.fromLTRB(6, 10, 4, 0),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.27,
            margin: EdgeInsets.fromLTRB(15, 30, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.24,
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
                          'Delivery Completed',
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14)),
                        contentPadding: EdgeInsets.fromLTRB(6, 10, 4, 0),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.27,
            margin: EdgeInsets.fromLTRB(15, 30, 15, 10),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 0))
                ]),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.24,
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
                          'Delivery Completed',
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                        trailing: Text('Sep 18,2020.09:48pm',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14)),
                        contentPadding: EdgeInsets.fromLTRB(6, 10, 4, 0),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
