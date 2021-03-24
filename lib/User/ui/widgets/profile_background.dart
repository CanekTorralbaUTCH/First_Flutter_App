import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth*0.50,
      height: screenHeight*0.50,
      margin: EdgeInsets.only(
        top: screenHeight*0.10,
        left: screenWidth*0.10,
        bottom: screenHeight*0.10,
        right: screenWidth*0.10,
      ),
      color: Colors.deepOrangeAccent,
      child: Text(
        "Profile",
        style: TextStyle(
          color: Colors.blue,

        ),
      )
    );
  }
}