import 'package:flutter/material.dart';

import 'TranslateOnHover.dart';

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Color(0xFF2C3E50),
      padding: EdgeInsets.only(left: 80, right: 30),
      alignment: Alignment.center,
      child: Container(
        child: _menuItem("Ravi Patel 2020. Thanks for the template from Start Flutter."),
      ),
    );
  }

  Widget _menuItem(title) {
    return TranslateOnHover(
      child: Text(
        title,
        style: TextStyle( color: Colors.white),
      ),
    );
  }
}
