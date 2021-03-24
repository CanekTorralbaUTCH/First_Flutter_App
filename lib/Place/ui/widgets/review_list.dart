import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  String pathImage1 = "https://http2.mlstatic.com/D_NQ_NP_605348-MLM42299451605_062020-O.jpg";
  String name1 = "Juan Perez";
  String details1 = "5 Reviews - 8 photos";
  String comment1 = "Beautiful place, I wish I could live here forever";

  String pathImage2 = "https://fotos-id.com/wp-content/uploads/2016/03/foto-tamano-infantil.jpg?6ad25c&6ad25c";
  String name2 = "Juana Perez";
  String details2 = "79 Reviews - 164 photos";
  String comment2 = "I don't know why, but I hate this place";

  String pathImage3 = "https://lh3.googleusercontent.com/ogw/ADGmqu-amkgnlACdt4X614TMxcTSJ7Z_iCEuPW81fZ753w=s83-c-mo";
  String name3 = "Canek Torralba";
  String details3 = "3 Reviews - 20 photos";
  String comment3 = "The best vacations I've had for the last 10 years";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin:EdgeInsets.only(
            top: 20.0,
            left: 20.0
          ),
          child: Text(
            "All reviews",
            style: TextStyle(
                fontSize: 17.0,
                color: Colors.white10,
                fontFamily: "PTSerif"
            ),
          ),
        ),

        Review(pathImage1, name1, details1, comment1),
        Review(pathImage2, name2, details2, comment2),
        Review(pathImage3, name3, details3, comment3),
      ],
    );
  }

}