import 'package:flutter/material.dart';

import '../TranslateOnHover.dart';

Widget CustomButton({@required title, @required icon, onPressed}) {
  return TranslateOnHover(
    child: OutlineButton(
      onPressed: onPressed,
      textColor: Colors.white,
      borderSide: BorderSide(color: Colors.white, width: 3),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0)),
      hoverColor: Colors.white.withOpacity(0.3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 20,
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            title,
          ),
        ],
      ),
    ),
  );
}