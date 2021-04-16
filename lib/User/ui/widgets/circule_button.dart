import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget{
  
  bool mini;
  var icon, color;
  double iconSize;
  
  CircleButton(this.mini, this.icon, this.iconSize, this.color);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton>{

  void onPressedButton(){}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: onPressedButton,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: Colors.lightGreenAccent,
          ),
        )
    );
  }
}