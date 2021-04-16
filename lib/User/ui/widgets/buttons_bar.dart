import 'package:flutter/material.dart';
import 'circule_button.dart';

class ButtonsBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 10
      ),
      child: Row(
        children: [
          CircleButton(true, Icons.turned_in_not, 20, Colors.white70),
          CircleButton(true, Icons.card_travel, 20, Colors.white70),
          CircleButton(false, Icons.add, 40, Colors.white70),
          CircleButton(true, Icons.mail_outline, 20, Colors.white70),
          CircleButton(true, Icons.person, 20, Colors.white70),
        ],
      ),
    );
  }

}