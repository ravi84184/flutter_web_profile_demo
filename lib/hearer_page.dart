import 'package:flutter/material.dart';

import 'TranslateOnHover.dart';

class HearderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xFF2C3E50),
      padding: EdgeInsets.only(left: 80, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              "Ravi Patel",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                _menuItem("PORTFOLIO"),
                SizedBox(
                  width: 15,
                ),
                _menuItem("ABOUT"),
                SizedBox(
                  width: 15,
                ),
                _menuItem("CONTACT"),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _menuItem(title) {
    return TranslateOnHover(
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
