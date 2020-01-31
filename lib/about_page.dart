import 'package:flutter/material.dart';

import 'TranslateOnHover.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF18BC9C),
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "ABOUT",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            height: 6,
            width: 300,
          ),
          Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "I am currently an Android developer working for Adit Microsys, Ahmedabad. and living in Ahmedabad, India.",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "My hobbies also include making games, making music and drawing. I plan to make a cool game before I am 30!",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: TranslateOnHover(
              child: OutlineButton(
                onPressed: () {},
                borderSide: BorderSide(color: Colors.white, width: 3),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                hoverColor: Colors.white.withOpacity(0.3),
                textColor: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.cloud_download,
                      size: 20,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Download Resume",
                    )
                  ],
                ),
              ),
            ),
          ),
          TranslateOnHover(
            child: OutlineButton(
              onPressed: () {},
              textColor: Colors.white,
              borderSide: BorderSide(color: Colors.white, width: 3),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
              hoverColor: Colors.white.withOpacity(0.3),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.linked_camera,
                    size: 20,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "LinkedIn Profile",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
