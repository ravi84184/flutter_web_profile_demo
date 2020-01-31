import 'package:flutter/material.dart';

import 'TranslateOnHover.dart';

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
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
                _protfolioItem(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _protfolioItem(){
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: TranslateOnHover(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.black54,
        ),
      ),
    );
  }
}
