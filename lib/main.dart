import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_app/User/bloc/user_bloc.dart';
import 'package:flutter_app/User/ui/screens/sigin_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.green[600],
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: SignInScreen()//AppCupertino()
        ),
        bloc: UserBloc());
  }
}
