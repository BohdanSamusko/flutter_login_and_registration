import 'package:auth_ui_demo/login/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth Demo',
        theme: ThemeData(
          textTheme: TextTheme(
              headline1: TextStyle(
                fontFamily: 'Decker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              headline2: TextStyle(
                fontFamily: 'Decker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              headline3: TextStyle(
                fontFamily: 'Decker',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            subtitle2: TextStyle(
              fontFamily: 'Decker',
              fontSize: 16,
              color: Colors.white70
            ),
            bodyText1: TextStyle(
              fontFamily: 'Decker',
              fontSize: 14,
              color: Colors.white54
            )
          )
        ),
        home: LoginScreen(),
      );
  }
}