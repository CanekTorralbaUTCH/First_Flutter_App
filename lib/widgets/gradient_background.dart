import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GradientBackground extends StatelessWidget{

  String title = "Willkommen";

  GradientBackground(this.title);

  @override
  Widget build(BuildContext context) {

    final background = Container(
      height: 360.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange[900],
            Colors.red[900],
          ],
          begin: FractionalOffset(0.0, -0.2),
          end: FractionalOffset(1.0,1.0),
          stops: [0.0, 0.5],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "PTSerif",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.75,-0.75),
    );

    return background;
  }

}