import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 50),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "CONTACT ME",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            color: Colors.black,
            height: 6,
            width: 300,
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 5,),
                Text(
                  "ravipatel84184@gmail.com",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.phone_android),
                SizedBox(width: 5,),
                Text(
                  "+91 70413 84184",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
