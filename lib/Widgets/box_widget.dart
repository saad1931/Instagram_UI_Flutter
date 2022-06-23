import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Login_s.dart';
import 'package:instagram/Widgets/textwidget.dart';
import 'package:instagram/bottomnavigation.dart';
import 'package:instagram/main_screen.dart';
import 'package:instagram/signin_s.dart';

Widget Login_Box(context,{pcolor=0xff3797EF,childparam,double he=50,double wi=300,})
{
  return Center(
    child: SizedBox(
      height: he,
      width: wi,
    
      child: ElevatedButton(
         child: childparam, 
         style: ElevatedButton.styleFrom(
         primary: Color(pcolor)
        ),
        onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>const Signin_S()));
        },
      ),
    ),
  );
}

Widget Login_Box2(context,{pcolor=0xff3797EF,childparam,double he=50,double wi=300,})
{
  return Center(
    child: SizedBox(
      height: he,
      width: wi,
    
      child: ElevatedButton(
         child: childparam, 
         style: ElevatedButton.styleFrom(
         primary: Color(pcolor)
        ),
        onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>const bottomnavigation_s()));
        },
      ),
    ),
  );
}