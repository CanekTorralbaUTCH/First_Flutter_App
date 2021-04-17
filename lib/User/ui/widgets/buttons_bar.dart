import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_app/User/bloc/user_bloc.dart';
import 'circule_button.dart';

class ButtonsBar extends StatelessWidget{

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 10
      ),
      child: Row(
        children: [
          CircleButton(true, Icons.turned_in_not, 20, Colors.white70, ()=>{}),
          CircleButton(true, Icons.card_travel, 20, Colors.white38, ()=>{}),
          CircleButton(false, Icons.add, 40, Colors.white70, ()=>{}),
          CircleButton(true, Icons.mail_outline, 20, Colors.white38, ()=>{}),
          CircleButton(true, Icons.logout, 20, Colors.white70, ()=>{userBloc.signOut()}),
        ],
      ),
    );
  }

}