import 'package:flutter/material.dart';
import '../../../widgets/star.dart';
import '../../../widgets/gradient_button.dart';

class DescriptionPlace extends StatelessWidget{

  String descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie neque nulla, a semper turpis pulvinar sit amet. Donec quis venenatis tellus, id viverra urna. Phasellus sit amet massa posuere, laoreet orci id, congue turpis. Duis sit amet finibus purus. Donec finibus volutpat leo quis molestie. Donec interdum porttitor justo, sed placerat augue tincidunt et. Etiam molestie enim id diam eleifend fringilla. Nulla iaculis purus in elit ultricies, quis suscipit metus posuere. Cras euismod vel urna et interdum. Morbi suscipit venenatis justo, eget pharetra nisi convallis et. In cursus magna vitae iaculis egestas. In lacinia efficitur sollicitudin. Etiam et finibus neque. Curabitur vehicula libero eget ipsum posuere, et tempus neque maximus. ";
  String name ="Lorem";
  double topDistance = 360.0;
  double stars;

  DescriptionPlace(this.name, this.stars, this.descriptionText);

  @override
  Widget build(BuildContext context) {


    final namePlace =Container(
      margin: EdgeInsets.only(
        top:  topDistance,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        name,
        style: TextStyle(
            fontFamily: "PTSerif",
            fontSize: 25.0,
            fontWeight: FontWeight.w800,
            color: Colors.black
        ),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
          top:  20.0,
          left: 20.0,
          right: 20.0,
      ),
      child: Text(
        descriptionText,
        style: TextStyle(
            fontFamily: "PTSerif",
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.black54
        ),
      ),
    );

    //Title next to stars
    final titleStars = Row(
      children: [
        namePlace,
        Row(
          children: [
            Star(Icons.star, topDistance),
            Star(Icons.star, topDistance),
            Star(Icons.star, topDistance),
            Star(Icons.star, topDistance),
            Star(Icons.star_half, topDistance),
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        GradientButton("Action")
      ],
    );
  }

}