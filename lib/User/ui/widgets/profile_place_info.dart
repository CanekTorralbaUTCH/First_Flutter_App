import 'package:flutter/material.dart';
import 'package:flutter_app/Place/model/place.dart';
import 'package:flutter_app/widgets/like_button.dart';

// ignore: must_be_immutable
class ProfilePlaceInfo extends StatelessWidget{

  Place place;

  ProfilePlaceInfo(this.place);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    final place = Text(
      this.place.name,
      style: TextStyle(
        fontFamily: "PTSerif",
        fontSize:  20.0,
        fontWeight:  FontWeight.bold
      )
    );

    final placeInfo = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 0.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.place.where,
            style: TextStyle(
              color: Colors.black54,
              fontFamily: "PTSerif",
              fontSize: 12.0,
              fontWeight:  FontWeight.bold
            )
          ),
          Text(
              this.place.type,
              style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "PTSerif",
                  fontSize: 12.0,
                  fontWeight:  FontWeight.bold
              )
          )
        ]
    ),
    );

    final steps = Text(
      "Steps ${this.place.steps}",
        style: TextStyle(
          fontFamily: "PTSerif",
          fontSize: 14.0,
          fontWeight:  FontWeight.bold,
          color: Colors.purple
        )
    );

    final card = Container(
      width: screenWidth*0.60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0.0,0.5)
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            place,
            placeInfo,
            steps
          ],
        ),
      ),
    );

    return Stack(
      alignment: Alignment(0.80,1.25),
      children: [
        card,
        LikeButton()
      ],
    );
  }

}
