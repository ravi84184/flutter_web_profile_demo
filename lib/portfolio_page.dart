import 'package:flutter/material.dart';

import 'ImageTranslateOnHover.dart';

class PortFolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "PORTFOLIO",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.black,
            height: 6,
            width: 300,
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 40),
            child: Wrap(
              children: <Widget>[
                _protfolioItem("images/portfolio1.png"),
                _protfolioItem("images/portfolio2.png"),
                _protfolioItem("images/portfolio3.png"),
                _protfolioItem("images/portfolio4.jpg"),
                _protfolioItem("images/portfolio5.png"),
                _protfolioItem("images/portfolio6.png"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _protfolioItem(String image) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: ImageTranslateOnHover(
        child: Container(
          width: 300,
          height: 200,
          child: Image(
            image: AssetImage(image),
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
