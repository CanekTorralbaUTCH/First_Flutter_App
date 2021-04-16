import 'package:flutter/material.dart';
import 'package:flutter_app/User/ui/widgets/user_info.dart';
import 'package:flutter_app/User/ui/widgets/buttons_bar.dart';

class ProfileHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = Text(
      "Profile",
      style: TextStyle(
        fontFamily: "PTSerif",
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32.0
      ),
    );
    
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 65.0
      ),
      child: Column(
        children: [
          Row(
            children: [
              title,
            ],
          ),
          UserInfo("https://miro.medium.com/max/785/0*Ggt-XwliwAO6QURi.jpg", "James Stone", "stoneJ637@gmail.com"),
          ButtonsBar()
        ],
      ),
    );
  }
  
}