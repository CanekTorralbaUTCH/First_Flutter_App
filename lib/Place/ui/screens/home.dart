import 'package:flutter/material.dart';
import 'file:///C:/Users/Canek/AndroidStudioProjects/flutter_app/lib/Place/ui/widgets/review_list.dart';
import '../widgets/description_place.dart';
import '../../../widgets/gradient_background.dart';
import '../widgets/card_img_list.dart';

class Home extends StatelessWidget{

  String dummieText = "Tlaquepaque, city, north-central Jalisco estado (state), west-central Mexico. Formerly known as San Pedro Tlaquepaque, the city lies in the temperate Guadalajara valley, approximately 5,400 feet (1,650 metres) above sea level. A suburb of Guadalajara, the state capital, 7 miles (11 km) southeast, Tlaquepaque is primarily a handicrafts centre known especially for its pottery, textiles, and handblown glass.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Tlaquepaque", 4.5, dummieText),
            ReviewList()
          ],
        ),
        GradientBackground("Willkommen",300),
        CardImageList(),
      ],
    );
  }
  
}