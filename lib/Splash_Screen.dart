import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:instagram/Login_s.dart';
import 'package:instagram/signin_s.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({ Key? key }) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void  initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=> Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=> Signin_S()))    
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor: Color(0xff121212), 
       body: SingleChildScrollView(
         child: Column(
          children: [
            SizedBox(height: 300,),
            Center(child: Image.asset("assets/images/logo1.png",height: 82,width: 82,),),
            SizedBox(height: 250,),
            Center(
              child: Stack(
              children: [
                Container(
                child: Image.asset("assets/images/meta.png",height: 130,),
                ),
                Positioned(
                  top: 20,
                  left: 80,
                  child: Container(
                  child: Text("from",style: GoogleFonts.nunito(fontSize: 20,color: Colors.grey)),
                  ),
                ),
                ]
                ),
                ),
          ],
         ),
       ),
      ),
      
    );
  }
}