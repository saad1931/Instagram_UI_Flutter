import 'package:flutter/material.dart';
import 'package:instagram/Login_s.dart';
import 'package:instagram/Splash_Screen.dart';
import 'package:instagram/bottomnavigation.dart';
import 'package:instagram/main_screen.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Splash_Screen(),
      //home: Main_Screen(),
      //home: btm(),
    );
  }
}