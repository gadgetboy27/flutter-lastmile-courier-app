import 'package:flutter/material.dart';

class HowItWorks extends StatefulWidget {
  @override
  _HowItWorksState createState() => _HowItWorksState();
}

class _HowItWorksState extends State<HowItWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How It Works!'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'In 2002, the FCC decided to no longer require A and B carriers to support AMPS service as of February 18, 2008. Since the AMPS standard is analog technology, it suffers from an inherently inefficient use of the frequency spectrum. All AMPS carriers have converted most of their consumer base to a digital standard such as CDMA2000 or GSM and continue to do so at a rapid pace. Digital technologies such as GSM and CDMA2000 support multiple voice calls on the same channel and offer enhanced features such as two-way text messaging and data services.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      color: Colors.grey[850]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'In 2002, the FCC decided to no longer require A and B carriers to support AMPS service as of February 18, 2008. Since the AMPS standard is analog technology, it suffers from an inherently inefficient use of the frequency spectrum. All AMPS carriers have converted most of their consumer base to a digital standard such as CDMA2000 or GSM and continue to do so at a rapid pace. Digital technologies such as GSM and CDMA2000 support multiple voice calls on the same channel and offer enhanced features such as two-way text messaging and data services.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        color: Colors.grey[850])),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'In 2002, the FCC decided to no longer require A and B carriers to support AMPS service as of February 18, 2008. Since the AMPS standard is analog technology, it suffers from an inherently inefficient use of the frequency spectrum. All AMPS carriers have converted most of their consumer base to a digital standard such as CDMA2000 or GSM and continue to do so at a rapid pace. Digital technologies such as GSM and CDMA2000 support multiple voice calls on the same channel and offer enhanced features such as two-way text messaging and data services.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      color: Colors.grey[850]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
