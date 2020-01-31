import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_page.dart';
import 'contact_page.dart';
import 'footer_page.dart';
import 'hearer_page.dart';
import 'portfolio_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HearderMenu(),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      color: Color(0xFF18BC9C),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            height: 200,
                            width: 150,
                            alignment: Alignment.center,
                            child: Text(
                              "Profile Image",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            color: Colors.black54,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "Ravi Patel",
                              style: TextStyle(
                                  fontSize: 80,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            color: Colors.white,
                            height: 6,
                            width: 300,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 50),
                            child: Text(
                              "Android Developer\nAdit Microsys, AMD.",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    PortFolioPage(),
                    AboutPage(),
                    ContactPage(),
                    FooterPage(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
