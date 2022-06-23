import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Widgets/textwidget.dart';

Widget Post_Widget(cw1,cw2,img,cw3,cw4,cw5,cw6)
{
  return Center(
   
    child: Column(
    
      
      children:[ 
      Row(
        children: [
        SizedBox(width: 15,),
        cw1, //Picture_Circle
        SizedBox(width: 10,),
        cw2,   //text_widget 
        SizedBox(width: 170,),
        Image.asset("assets/images/more.png",height: 20,width: 30,color: Colors.white),
        ],          
      ),
      SizedBox(height: 10,),
      Container(
        height: 350,
        width: 350,
        child: Image.asset(img),
      ),
      SizedBox(height: 5,),
      Row(
        children: [
        SizedBox(width: 15,),
        Image.asset("assets/images/heart.png",height: 30,width: 30,color: Colors.white),
        SizedBox(width: 10,),
        Image.asset("assets/images/chat.png",height: 40,width: 30,color: Colors.white),
        SizedBox(width: 10,),
        Image.asset("assets/images/send.png",height: 30,width: 30,color: Colors.white),
        SizedBox(width: 190,),
        Image.asset("assets/images/ribbon.png",height: 30,width: 30,color: Colors.white),
        ],          
      ),
      SizedBox(height: 5,),
      Row(
        children: [
          SizedBox(width: 10,),
          cw3, //like by pic
          SizedBox(width: 10,),
          Text_Widget("Liked by", Colors.white, GoogleFonts.nunito,sz: 13),  //text liked by,
          SizedBox(width: 5,),
          cw4, //person name bold
          SizedBox(width: 5,),
          Text_Widget("and", Colors.white, GoogleFonts.nunito,sz: 13),  //text liked by,
          SizedBox(width: 5,),
          cw5 //number of likes
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          SizedBox(width: 10,),
          cw2, //person name
          SizedBox(width: 5,),
          cw6  //text caption
         ],
      ),
      
      ]
    ),

  );
}