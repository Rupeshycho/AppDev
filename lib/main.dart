import 'package:flutter/material.dart';
// import 'package:insta_clone/home_screen.dart';
//import 'package:insta_clone/login_screen.dart';
import 'login_screen.dart';

import 'dashboard_screen.dart';

void main(){
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Clone",
      home: LoginScreen(),

    );
  }
}