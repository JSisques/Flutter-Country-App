import 'dart:async';

import 'package:country_app/view/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{

  Timer timer;
  @override
  void initState(){
    super.initState();
    timer = Timer(Duration(seconds: 2), showLogin);
  }

  @override
  void dispose(){
    timer.cancel();
    super.dispose();
  }

  void showLogin(){
    if (mounted){
      //Navigator.of(context).pushReplacement(HomeScreen.route());
      Navigator.pushReplacement(context, HomeScreen.route());
    }
  }

  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.blue[900],
      child: Center(
         child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 2,
          ),
      )
    );
  }
}