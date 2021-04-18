import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight*0.47,

      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-2,-1),
        child: Container(
            width: screenWidth*1.5,
            height: screenHeight*0.8,
            decoration: BoxDecoration(
                color: Color(0xFFFF5722),
                borderRadius: BorderRadius.circular(screenHeight*0.5)
            )
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.blueAccent[700]
              ],
            begin: FractionalOffset(0.2,0),
            end: FractionalOffset(1.0,1.0),
            stops: [0,0],
            tileMode: TileMode.clamp
          )
      ),
    );
  }
}