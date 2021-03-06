import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class TranslateOnHover extends StatefulWidget {
  final Widget child;

  // You can also pass the translation in here if you want to
  TranslateOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateOnHoverState createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -5, 0);
  bool _hovering = false;
  static final appContainer = html.window.document.getElementById('app-container');

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      onHover: (evt) {
        appContainer.style.cursor='pointer';
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
//        color: _hovering ? Colors.red : Colors.transparent,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    appContainer.style.cursor='default';
    setState(() {
      _hovering = hover;
    });
  }
}
