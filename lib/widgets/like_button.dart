import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement build
    return _LikeButton();
  }

}

class _LikeButton extends State<LikeButton>{
  bool _state = false;
  
  void onPressedLike(){
    setState(() {
      _state = this._state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedLike,
      mini: true,
      backgroundColor: Colors.blue[800],
      child: Icon(
        this._state ? Icons.thumb_up : Icons.thumb_up_alt_outlined
      ),
    );

  }
}