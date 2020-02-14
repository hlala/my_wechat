import 'package:flutter/material.dart';

class TouchFoBackWidget extends StatefulWidget {
  Widget child;
  VoidCallback onPressed;
  bool isTouch;
  Color background;

  TouchFoBackWidget({Key key,
    @required this.child,
    @required this.onPressed,
    this.isTouch:true,
    this.background:const Color(0xff8b8b8b),
  }):super(key:key);

  @override
  _TouchFoBackWidgetState createState() => _TouchFoBackWidgetState();
}

class _TouchFoBackWidgetState extends State<TouchFoBackWidget> {
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
    );
  }
}