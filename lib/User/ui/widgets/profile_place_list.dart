import 'package:flutter/material.dart';
import 'profile_place.dart';
import 'package:flutter_app/Place/model/place.dart';

// ignore: must_be_immutable
class ProfilePLaceList extends StatelessWidget{

  Place place1 = Place("Easter island", "Southeastern Pacific Ocean, at the southeasternmost point of the Polynesian Triangle in Oceania", "Touristic Site", "200,000");
  String place1Img = "https://static.dw.com/image/19549423_303.jpg";

  Place place2 = Place("Miami","Southeastern Florida in the United States.","Touristic Site","150,000");
  String place2Img = "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/471000/471674-Miami.jpg?impolicy=fcrop&w=360&h=224&q=mediumLow";

  Place place3 = Place("Cordoba","In the Mexican state of Veracruz.","Historic Site","50,000");
  String place3Img = "https://www.miescape.mx/miescape/Portals/0/Resources/Images/Mexico/Guia%20Turistica/Veracruz/Veracruz%20Cordoba%20960%20x%20651.jpg?ver=2014-02-18-153321-537";

  Place place4 = Place("Shanghai","One of the four direct-administered municipalities of the People's Republic of China.","Historic Site","250,000");
  String place4Img = "https://www.riotgames.com/darkroom/1440/7ef31125920bc2fa35df438b6568978e:ecc6a5be474ffab0ac39b3298334c28d/shanghai-1.jpg";

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;


    return Container(
      margin: EdgeInsets.only(
        top: screenHeight*0.50,
        left: 20.0,
        bottom: 10.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          ProfilePlace(place1Img, place1),
          ProfilePlace(place2Img, place2),
          ProfilePlace(place3Img, place3),
          ProfilePlace(place4Img, place4)
        ],
      ),
    );
  }

}