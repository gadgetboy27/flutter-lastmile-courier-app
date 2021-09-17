import 'package:doorpost/Past.dart';
import 'package:doorpost/Pending.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'All Deliveries',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.red,
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.black,
              controller: _tabController,
              tabs: [
                Tab(
                  text: "Pending",
                ),
                Tab(
                  text: "Past",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Pending(),
              Past(),
            ],
          ),
        ),
      ),
    );
  }
}
