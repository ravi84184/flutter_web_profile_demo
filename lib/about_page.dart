import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/custom_button.dart';

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
                textAlign: TextAlign.center,
              )),
          Container(
              margin: EdgeInsets.only(top: 10, left: 50, right: 50),
              child: Text(
                "I carry 2+ years of quality experience in developing native Android (Java) & Cross Platform apps for iOS & Android using Flutter also have expertise in PHP and MySQL as back-end based web applications development as well.",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              )),
          Container(
              margin: EdgeInsets.only(top: 10, left: 50, right: 50),
              child: Text(
                "I have worked with Startups as well as corporates to help them build their tech products and was involved from the idea stage, to project planning, iterate & make necessary changes according to user's feedback to raise the money through a crowdfunding campaign.i am expert in Rest Api both json and xml, Google maps,Firebase, Google ads,Firebase Expert, Turn off and on functionality of notification, Social media integration, Parse sdk, Pushwoosh notification, Integration vimeo or youtube video player, Integration pdf reader, Integration side menu navigation and background Services, Integration any other third party library etc etc .",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              )),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Wrap(
              children: <Widget>[
                CustomButton(
                    title: "LinkedIn",
                    icon: FontAwesomeIcons.linkedinIn,
                    onPressed: () {
                      js.context
                          .callMethod("open", ["https://github.com/ravi84184"]);
                    }),
                SizedBox(
                  width: 10,
                ),
                CustomButton(
                    title: "Github",
                    icon: FontAwesomeIcons.github,
                    onPressed: () {
                      js.context
                          .callMethod("open", ["https://github.com/ravi84184?utf8=%E2%9C%93&tab=repositories&q=&type=&language=dart"]);
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
