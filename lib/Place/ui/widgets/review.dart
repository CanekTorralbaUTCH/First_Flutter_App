import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/star.dart';

class Review extends StatelessWidget{

  String pathImage = "";
  String name = "";
  String details = "";
  String comment = "";

  double topDistance = 3.0;
  double size = 14.0;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit:  BoxFit.cover,
            image: NetworkImage(pathImage)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "PTSerif",
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 40.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "PTSerif",
          fontSize: 14.0,
          color: Colors.grey
        ),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "PTSerif",
            fontWeight: FontWeight.w900,
            fontSize: 14.0,
        ),
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [
            userDetails,
            Star(Icons.star, topDistance),
            Star(Icons.star, topDistance),
            Star(Icons.star, topDistance),
            Star(Icons.star_half, topDistance),
            Star(Icons.star_border, topDistance),
          ],
        ),
        userComment,
      ],
    );

    return Row(
      children: [
        photo,
        userInfo
      ],
    );
  }
}
