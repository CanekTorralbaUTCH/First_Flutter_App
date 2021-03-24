import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Place/ui/screens/home.dart';
import 'Place/ui/screens/search.dart';
import 'User/ui/screens/profile.dart';

class AppCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: null),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: null),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: null),
          ]
        ),
        tabBuilder: (BuildContext context, int index){
          switch(index){
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Home()
              );
              break;
            case 1:
              return CupertinoTabView(
                  builder: (BuildContext context) => Search()
              );
              break;
            case 2:
              return CupertinoTabView(
                  builder: (BuildContext context) => Profile()
              );
              break;
            default:
              return null;
          }
        }
      )
    );
  }

}