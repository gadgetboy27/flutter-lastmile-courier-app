import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:doorpost/Payment.dart';


class ConfirmInfo extends StatefulWidget {
  @override
  _ConfirmInfoState createState() => _ConfirmInfoState();
}

class _ConfirmInfoState extends State<ConfirmInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirm Information',
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
            padding: EdgeInsets.all(8),
            child: ListView(
              children: [
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Type of Courier',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Text(
                          'Box Packing',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Box Width',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 230,
                        ),
                        Text(
                          '45cm',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Box Height',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 225,
                        ),
                        Text(
                          '60cm',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Box Length',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 225,
                        ),
                        Text(
                          '50cm',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Total Weight',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 225,
                        ),
                        Text(
                          '4kg',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Parcel Frangible?',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          'Yes',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.13,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Information',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'In 2002, the FCC decided to no longer require A and B carriers to support AMPS service as of February 18, 2008. Since the AMPS standard is analog technology, it suffers from an inherently inefficient use of the frequency spectrum. ',
                          maxLines: 3,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Economy Delivery',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Text(
                          '\$10.00',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                    width: width,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Delivery Information',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Text(
                          '2.7km',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[300],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Container(
                  width: width,
                  height: height * 0.08,
                  child: ListTile(
                      title: Text(
                        'Martha Chesington',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      subtitle: Text(
                        '5211 S Dearborn St.Chicago,lL 60605',
                        style: TextStyle(fontSize: 11),
                      ),
                      trailing: Icon(
                        Icons.location_on_outlined,
                        color: Colors.redAccent,
                        size: 20,
                      )),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Payment()));
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
                'Make a Payment',
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
