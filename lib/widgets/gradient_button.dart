import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget{

  String buttonText="";

  GradientButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("Atention"))
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left:  20.0,
          right: 20.0
        ),
        height: 60.0,
        width: 230.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
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
          child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  fontFamily: "PTSerif",
                  fontSize: 19.0,
                  color: Colors.white
                )
              )
          )
      )
    );
  }

}