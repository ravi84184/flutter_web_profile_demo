import 'package:flutter/material.dart';

import 'TranslateOnHover.dart';

class MobileMenu extends StatefulWidget {
  final height,width;
  final ValueChanged<double> onSelectedChanged;
  final ScrollController scrollController;

  const MobileMenu({Key key, this.height, this.width, this.onSelectedChanged, this.scrollController}) : super(key: key);

  @override
  _MobileMenuState createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  var menuIndex=-1;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_scrollListener);
  }

  _scrollListener() {
    if (widget.scrollController.offset >= 600) {
      if (widget.scrollController.offset >=
          widget.scrollController.position.maxScrollExtent - 600.0) {
        if (widget.scrollController.offset >=
            widget.scrollController.position.maxScrollExtent) {
          if (menuIndex != 2) {
            setState(() {
              menuIndex = 2;
            });
          }
        } else {
          if (menuIndex != 1) {
            setState(() {
              menuIndex = 1;
            });
          }
        }
      } else {
        if (menuIndex != 0) {
          setState(() {
            menuIndex = 0;
          });
        }
      }
    } else {
      if (menuIndex != -1) {
        setState(() {
          menuIndex = -1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80),
      height: widget.height,
      width: widget.width,
      color:Color(0xFF2C3E50).withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            child: menuItem("PORTFOLIO", menuIndex == 0),
            onTap: () {
              setState(() {
                menuIndex = 0;
                widget.onSelectedChanged(0);
              });
            },
          ),
          InkWell(
            child: menuItem("ABOUT", menuIndex == 1),
            onTap: () {
              setState(() {
                menuIndex = 1;
                widget.onSelectedChanged(1);
              });
            },
          ),
          InkWell(
            child: menuItem("CONTACT", menuIndex == 2),
            onTap: () {
              setState(() {
                menuIndex = 2;
                widget.onSelectedChanged(2);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget menuItem(title, bool isSelected) {
    return TranslateOnHover(
      child: Container(
        padding: EdgeInsets.all(10),
        height: 70,
        alignment: Alignment.center,
        color: isSelected ? Color(0xFF18BC9C) : Colors.transparent,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
