import 'package:flutter/material.dart';
import 'card_img.dart';

class CardImageList extends StatelessWidget{

  String pathImage1 = "https://chipviajero.com/wp-content/uploads/2020/03/Como-Llegar-a-Tlaquepaque-Guadalajara-Jalisco-Chip-Viajero-10.jpg";
  String pathImage2 = "https://toursgdl.com/wp-content/uploads/2019/07/word-image.jpeg";
  String pathImage3 = "https://www.plans.com.mx/wp-content/uploads/2019/04/tlaquepaque-destileria-tour-kiosko.jpg";
  String pathImage4 = "https://c8.alamy.com/compes/2ar32km/san-pedro-tlaquepaque-jalisco-mexico-23-de-noviembre-de-2019-locales-y-turistas-que-exploran-los-restaurantes-y-tiendas-de-la-calle-independencia-2ar32km.jpg";
  String pathImage5 = "https://www.mexicodesconocido.com.mx/wp-content/uploads/2019/02/GEMD_JALISCO_TLAQUEPAQUE_CENTRO-CULTURAL-EL-REFUGIO_CUPULAS-AZOTEA_ASPECTOS-GENTE_MG_0889.jpg";
  String pathImage6 = "https://mexicotravelchannel.com.mx/wp-content/uploads/2020/11/cafeteria-el-mirador_mexico-travel-channel_1200x680.jpg";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage(pathImage1),
          CardImage(pathImage2),
          CardImage(pathImage3),
          CardImage(pathImage4),
          CardImage(pathImage5),
          CardImage(pathImage6),
        ],
      ),
    );
  }

}
