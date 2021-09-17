import 'package:doorpost/CourierID.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  Pay _ch = Pay.Paypal;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Payment Method',
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
                color: Colors.grey[200],
                child: ListView(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 0))
                        ]),
                    padding: const EdgeInsets.all(6.0),
                    margin: const EdgeInsets.all(12.0),
                    height: height * 0.11,
                    width: width * 0.7,
                    child: ListTile(
                      title: Row(
                        children: [
                          Container(
                            width: width * 0.1,
                            height: height * 0.08,
                            margin: EdgeInsets.all(4),
                            child: Image.asset('assets/images/paypal.jpg'),
                          ),
                          Text(
                            'PayPal',
                            style: TextStyle(fontSize: 19),
                          )
                        ],
                      ),
                      trailing: Radio(
                        value: Pay.Paypal,
                        groupValue: _ch,
                        onChanged: (Pay value) {
                          setState(() {
                            _ch = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 0))
                        ]),
                    padding: const EdgeInsets.all(6.0),
                    margin: const EdgeInsets.all(12.0),
                    height: height * 0.11,
                    width: width * 0.7,
                    child: ListTile(
                      title: Row(
                        children: [
                          Container(
                            width: width * 0.1,
                            height: height * 0.08,
                            margin: EdgeInsets.all(4),
                            child: Image.asset('assets/images/razorpay.jpeg'),
                          ),
                          Text(
                            'RazorPay',
                            style: TextStyle(fontSize: 19),
                          )
                        ],
                      ),
                      trailing: Radio(
                        value: Pay.Razorpay,
                        groupValue: _ch,
                        onChanged: (Pay value) {
                          setState(() {
                            _ch = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 0))
                        ]),
                    padding: const EdgeInsets.all(6.0),
                    margin: const EdgeInsets.all(12.0),
                    height: height * 0.11,
                    width: width * 0.7,
                    child: ListTile(
                      title: Row(
                        children: [
                          Container(
                            width: width * 0.12,
                            height: height * 0.08,
                            margin: EdgeInsets.all(4),
                            child: Image.asset('assets/images/stripe1.png'),
                          ),
                          Text(
                            'Stripe',
                            style: TextStyle(fontSize: 19),
                          )
                        ],
                      ),
                      trailing: Radio(
                        value: Pay.Stripe,
                        groupValue: _ch,
                        onChanged: (Pay value) {
                          setState(() {
                            _ch = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 0))
                        ]),
                    padding: const EdgeInsets.all(6.0),
                    margin: const EdgeInsets.all(12.0),
                    height: height * 0.105,
                    width: width * 0.7,
                    child: ListTile(
                      title: Text(
                        'Cash On Pickup',
                        style: TextStyle(fontSize: 18),
                      ),
                      trailing: Radio(
                        value: Pay.CashonPickup,
                        groupValue: _ch,
                        onChanged: (Pay value) {
                          setState(() {
                            _ch = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 0))
                        ]),
                    padding: const EdgeInsets.all(6.0),
                    margin: const EdgeInsets.all(12.0),
                    height: height * 0.105,
                    width: width * 0.7,
                    child: ListTile(
                      title: Text(
                        'Cash On Delivery',
                        style: TextStyle(fontSize: 18),
                      ),
                      trailing: Radio(
                        value: Pay.CashonDelivery,
                        groupValue: _ch,
                        onChanged: (Pay value) {
                          setState(() {
                            _ch = value;
                          });
                        },
                      ),
                    ),
                  ),
                ])),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CourierID()));
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
                  'Done',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, letterSpacing: 1.9),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ));
  }
}

enum Pay { Paypal, Razorpay, Stripe, CashonPickup, CashonDelivery }
