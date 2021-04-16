import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/gradient_background.dart';
import 'package:flutter_app/widgets/generic_button.dart';
import 'package:flutter_app/User/bloc/user_bloc.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_app/app_cupertino.dart';

class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleUserSession();
  }

  Widget _handleUserSession(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(!snapshot.hasData || snapshot.hasError){
          return SignInGoogleUI();
        }
        else{
          return AppCupertino();
        }
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget SignInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBackground("", null),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Wilkommen\n Cette votre application du voyage",
                  style: TextStyle(
                    fontFamily: "PTSerif",
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),
                GenericButton(buttonText: "Log in with Gmail", onPressed: (){
                  userBloc.signIn();
                },
                  width: null,
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}