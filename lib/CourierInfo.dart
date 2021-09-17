import 'package:doorpost/ConfirmInfo.dart';
import 'package:flutter/material.dart';

class CourierInfo extends StatefulWidget {
  @override
  _CourierInfoState createState() => _CourierInfoState();
}

class _CourierInfoState extends State<CourierInfo> {
  double _current1 = 20, _current2 = 30, _current3 = 40, _current4 = 50;
  Option _ch = Option.Yes;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Courier Information'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: height,
            width: width,
            child: ListView(
              //shrinkWrap: true,
              // scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  height: height * 0.1,
                  child: Row(
                    children: [
                      Text(
                        'Type of Courier',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Box Packing',
                        style: TextStyle(color: Colors.black38),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.black38,
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  height: height * 0.14,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Box Width',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text('${_current1}cm')
                        ],
                      ),
                      Slider(
                        value: _current1,
                        min: 0.0,
                        max: 100.0,
                        divisions: 5,
                        label: _current1.round().toString(),
                        onChanged: (double text) {
                          setState(() {
                            _current1 = text;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  height: height * 0.14,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Box Height',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text('${_current2}cm')
                        ],
                      ),
                      Slider(
                        value: _current2,
                        min: 0.0,
                        max: 100.0,
                        divisions: 5,
                        label: _current2.round().toString(),
                        onChanged: (double text) {
                          setState(() {
                            _current2 = text;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  height: height * 0.14,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Box Length',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text('${_current3}cm')
                        ],
                      ),
                      Slider(
                        value: _current3,
                        min: 0.0,
                        max: 100.0,
                        divisions: 5,
                        label: _current3.round().toString(),
                        onChanged: (double text) {
                          setState(() {
                            _current3 = text;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  height: height * 0.14,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Total Weight',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text('${_current4}kg')
                        ],
                      ),
                      Slider(
                        value: _current4,
                        min: 0.0,
                        max: 100.0,
                        divisions: 5,
                        label: _current4.round().toString(),
                        onChanged: (double text) {
                          setState(() {
                            _current4 = text;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  height: height * 0.2,
                  width: width,
                  child: Row(
                    children: [
                      Text('Is Parcel Frangible?'),
                      Container(
                        //   height: height * 0.3,

                        width: width * 0.25,
                        child: ListTile(
                          title: const Text(
                            'Yes',
                          ),
                          leading: Radio(
                            value: Option.Yes,
                            groupValue: _ch,
                            onChanged: (Option value) {
                              setState(() {
                                _ch = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        //  height: height * 0.3,
                        width: width * 0.25,
                        child: ListTile(
                          title: const Text(
                            'No',
                          ),
                          leading: Radio(
                            value: Option.No,
                            groupValue: _ch,
                            onChanged: (Option value) {
                              setState(() {
                                _ch = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0))
                      ]),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  height: height * 0.2,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Courier Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[100],
                                  blurRadius: 2,
                                  offset: Offset(0, 0))
                            ]),
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.all(10.0),
                        width: width * 0.8,
                        height: height * 0.1,
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Details',
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // print("Confirm");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ConfirmInfo()));
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
                'Confirm Information',
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

enum Option { Yes, No }
