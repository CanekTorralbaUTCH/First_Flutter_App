import 'package:flutter/material.dart';
import 'file:///C:/Users/Canek/AndroidStudioProjects/flutter_app/lib/widgets/like_button.dart';

class CardImage extends StatelessWidget{

  String pathImage ="";

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final card = Container(

      height: 300.0,
      width: 350.0,

      margin: EdgeInsets.only(
        top: 100.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(9.5)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 14.0,
            offset: Offset(0.0, 0.5)
          )
        ]
      ),
    );
    return Stack(
      alignment: Alignment(0.8,0.8),
      children: [
        card,
        LikeButton()
      ],
    );
  }

}
