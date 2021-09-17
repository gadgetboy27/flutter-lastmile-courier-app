import 'package:doorpost/Pickup.dart';
import 'package:flutter/material.dart';

class HomeSt extends StatefulWidget {
  @override
  _HomeStState createState() => _HomeStState();
}

class _HomeStState extends State<HomeSt> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.fromLTRB(10, 6, 1, 6),
          width: width * 0.1,
          height: width * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/profile2.jpeg',
                  )),
              borderRadius: BorderRadius.circular(width * 0.035),
              boxShadow: [
                BoxShadow(
                    color: Colors.red, blurRadius: 2, offset: Offset(0, 0))
              ]),
        ),
        title: ListTile(
          title: Text(
            'Welcome,',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            'Donna Watson',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            width: width,
            height: height,
            child: Image.asset(
              'assets/images/clouds2.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            // color: Colors.grey[200],
            padding: EdgeInsets.all(10.0),
            width: width,
            height: height,
            child: ListView(
              children: [
                SizedBox(
                  height: 30,
                  width: 60,
                ),
                Container(
                  width: width * 0.32,
                  height: height * 0.27,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: width * 0.32,
                        height: height * 0.27,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.grey[200],
                                  offset: Offset(0, 0))
                            ],
                            borderRadius: BorderRadius.circular(12)),
                        child: Flex(
                          direction: Axis.vertical,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Pickup()));
                              },
                              child: Stack(
                                fit: StackFit.loose,
                                children: [
                                  Container(
                                    width: width * 0.35,
                                    height: height * 0.18,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        //colorBlendMode: BlendMode.color,

                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 2,
                                              color: Colors.white,
                                              offset: Offset(0, 0))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Image.asset(
                                      'assets/images/carton.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.33,
                                    height: height * 0.17,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        backgroundBlendMode: BlendMode.darken,
                                        color: Colors.pink[50],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(11),
                                            topRight: Radius.circular(11))),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Organise\n Delivery',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    backgroundColor: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 18.0),
                      Container(
                        width: width * 0.32,
                        height: height * 0.27,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.grey[200],
                                  offset: Offset(0, 0))
                            ],
                            borderRadius: BorderRadius.circular(12)),
                        child: Flex(
                          direction: Axis.vertical,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Pickup()));
                              },
                              child: Stack(
                                fit: StackFit.loose,
                                children: [
                                  Container(
                                    width: width * 0.35,
                                    height: height * 0.18,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        //colorBlendMode: BlendMode.color,

                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 2,
                                              color: Colors.white,
                                              offset: Offset(0, 0))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Image.asset(
                                      'assets/images/grocery.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.32,
                                    height: height * 0.17,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        backgroundBlendMode: BlendMode.darken,
                                        color: Colors.pink[50],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12))),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                ' Delivery for\nGrocery',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    backgroundColor: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Container(
                        width: width * 0.32,
                        height: height * 0.27,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.grey[200],
                                  offset: Offset(0, 0))
                            ],
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Pickup()));
                                  },
                                  child: Stack(
                                    fit: StackFit.loose,
                                    children: [
                                      Container(
                                        width: width * 0.287,
                                        height: height * 0.183,
                                        alignment: Alignment.centerRight,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            //colorBlendMode: BlendMode.color,

                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 2,
                                                  color: Colors.white,
                                                  offset: Offset(0, 0))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Image.asset(
                                          'assets/images/pizza-slice.jpeg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Container(
                                        width: width * 0.32,
                                        height: height * 0.17,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            backgroundBlendMode: BlendMode.darken,
                                            color: Colors.pink[50],
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(12),
                                                topRight: Radius.circular(12))),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 7),
                                  child: Text(
                                    ' Delivery for\nFood',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        backgroundColor: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(width * 0.31, width * 0.1, 0, 0),
                  width: width,
                  height: height * 0.05,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Text(
                        'Catch a Deal',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 6,
                  width: width,
                  margin: EdgeInsets.fromLTRB(width * 0.34, 0, width * 0.4, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  width: width * 0.4,
                  height: height * 0.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: width * 0.38,
                        height: height * 0.24,
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Container(
                              height: height * 0.24,
                              width: width * 0.38,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black54, BlendMode.darken),
                                  image: AssetImage("assets/images/pizza.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        'Ozus Food',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 77.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Order from us \nand get 20% discounts',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: width * 0.38,
                              height: height * 0.24,
                              child: Stack(
                                fit: StackFit.loose,
                                children: [
                                  Container(
                                      width: width * 0.38,
                                      height: height * 0.24,
                                      decoration: BoxDecoration(
                                        backgroundBlendMode: BlendMode.darken,
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.black54,
                                        image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black54, BlendMode.darken),
                                          image: AssetImage(
                                            'assets/images/pizza.jpeg',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Flex(
                                    direction: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Flex(
                                          direction: Axis.horizontal,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 1.0),
                                            Text(
                                              'Grocery Mart',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 77.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Order from us \nand get 50% discounts',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Container(
                        width: width * 0.38,
                        height: height * 0.24,
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Container(
                              width: width * 0.38,
                              height: height * 0.24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black54, BlendMode.darken),
                                  image: AssetImage(
                                    'assets/images/pizza.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        'Ozus Food',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 77.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Order from us \nand get 20% discounts',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.1,
                  margin: EdgeInsets.fromLTRB(width * 0.13, 0, width * 0.13, 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Text(
                        'There\'s nothing more precious\n than time, save it.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            color: Colors.black45),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
