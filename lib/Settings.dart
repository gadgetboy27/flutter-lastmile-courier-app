// import 'package:flutter/foundation.dart';
import 'package:doorpost/Login.dart';
import 'package:doorpost/PrivacyPolicy.dart';
import 'package:flutter/material.dart';

import 'package:doorpost/EditProfile.dart';
import 'package:doorpost/HowItWorks.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
          'Settings',
          style: TextStyle(color: Colors.black, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              Text(
                'Profile',
                style: TextStyle(color: Colors.black45),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  margin: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: ClipOval(
                            child: Image.asset('assets/images/profile2.jpeg'),
                          ),
                        ),
                      ),
                      Text('Donna Watson'),
                      SizedBox(width: 100.0),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text('App Related', style: TextStyle(color: Colors.grey)),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: width,
                height: height * 0.52,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  ListTile(
                    title: Text('Change Language'),
                    leading: Icon(Icons.language),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return PopUpMenuOption();
                          });
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('How It Works'),
                    leading: Icon(Icons.assignment),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HowItWorks()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Terms of Use'),
                    leading: Icon(Icons.toc),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Privacy Policy'),
                    leading: Icon(Icons.assignment_turned_in),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PrivacyPolicy()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Share This App'),
                    leading: Icon(Icons.share),
                  ),
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Login()));
                },
                child: Container(
                    alignment: Alignment.center,
                    width: width,
                    height: height * 0.08,
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red),
                    child: Text(
                      'Logout'.toUpperCase(),
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopUpMenuOption extends StatefulWidget {
  @override
  _PopUpMenuOptionState createState() => _PopUpMenuOptionState();
}

class _PopUpMenuOptionState extends State<PopUpMenuOption> {
  //Language _sel = Language.English;
  List<String> lang = [
    'English',
    'Hindi',
    'Telugu',
    'Tamil',
    'Kannada',
    'Malayalam',
    'Bhojpuri',
    'Gujarati',
    'Marati',
    'Bengali'
  ];
  int _sel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Material(
          type: MaterialType.transparency,
          child: Container(
              width: width,
              height: height * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.all(40),
              child: ListView.builder(
                itemCount: lang.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${lang[index]}'),
                    selected: index == _sel,
                    onTap: () {
                      setState(() {
                        _sel = index;
                      });
                    },
                  );
                },
              ))),
    );

    //Center(
    //    backgroundColor: Colors.transparent,
    //   child: Material(

    //     child: PopupMenuButton<Language>(onSelected: (Language res) {
    //       setState(() {
    //         _sel = res;
    //       });
    //     }, itemBuilder: (BuildContext context) {
    //       return <PopupMenuEntry<Language>>[
    //         const PopupMenuItem(
    //           child: Text('English'),
    //           value: Language.English,
    //         ),
    //         const PopupMenuItem(
    //           child: Text('Hindi'),
    //           value: Language.Hindi,
    //         ),
    //         const PopupMenuItem(
    //           child: Text('Telugu'),
    //           value: Language.Telugu,
    //         ),
    //       ];
    //     }),
    //   ),
    // );
  }
}
