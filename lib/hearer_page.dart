import 'package:flutter/material.dart';

import 'TranslateOnHover.dart';

class HearderMenu extends StatefulWidget {
  final ValueChanged<double> onSelectedChanged;
  final ValueChanged<bool> onNavigationClick;
  final ScrollController scrollController;
  final width;
  const HearderMenu({Key key, this.onSelectedChanged, this.scrollController, this.width, this.onNavigationClick,})
      : super(key: key);

  @override
  _HearderMenuState createState() => _HearderMenuState();
}

class _HearderMenuState extends State<HearderMenu> {
  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_scrollListener);
  }

  var menuIndex = -1;
  var height = 100.0;
  var isMobileMenuOpen = false;

  _scrollListener() {
    if (widget.scrollController.offset >=
        widget.scrollController.position.minScrollExtent + 100) {
      setState(() {
        height = 80;
      });
    } else {
      setState(() {
        height = 100;
      });
    }
    if (widget.scrollController.offset >= 600) {
      if (widget.scrollController.offset >=
          widget.scrollController.position.maxScrollExtent - 250.0) {
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
    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: height,
        color: Color(0xFF2C3E50),
        padding: EdgeInsets.only(left: 80, right: 30),
        child: Row(
          mainAxisSize: MainAxisSize.max,
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
            widget.width > 700
                ? Container(
                    child: Row(
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
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          widget.onNavigationClick(true);
                        });
                      },
                      child: TranslateOnHover(
                          child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                    ),
                  )
          ],
        ));
  }

  Widget menuItem(title, bool isSelected) {
    return TranslateOnHover(
      child: Container(
        padding: EdgeInsets.all(10),
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
