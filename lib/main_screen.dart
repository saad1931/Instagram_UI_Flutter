import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Widgets/post_widget.dart';
import 'package:instagram/Widgets/profile.dart';

import 'Widgets/textwidget.dart';
import 'divider_widget.dart';

class Main_Screen extends StatelessWidget {
  const Main_Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121212), 
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                color:  Color.fromARGB(255, 44, 42, 42),
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    //Icon(Icons.camera_enhance,color: Colors.white,),
                    Image.asset("assets/images/cm2.png",height: 30,width: 30,color: Colors.white,),
                    SizedBox(width: 60,),
                    Text_Widget("Instagram",Colors.white,GoogleFonts.cookie,sz: 40),
                    SizedBox(width: 35,),
                    Image.asset("assets/images/live.png",height: 30,width: 30,color: Colors.white),
                    SizedBox(width: 15,),
                    Image.asset("assets/images/send.png",height: 30,width: 30,color: Colors.white)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Picture_Circle2("assets/images/p.jpg"),
                          SizedBox(width: 15,),
                          Picture_Circle2("assets/images/p.jpg"),
                          SizedBox(width: 15,),
                          Picture_Circle2("assets/images/p.jpg"),
                          SizedBox(width: 15,),
                          Picture_Circle2("assets/images/p.jpg"),
                          SizedBox(width: 15,),
                          Picture_Circle2("assets/images/p.jpg"),
                          SizedBox(width: 15,),
                          Picture_Circle2("assets/images/p.jpg"),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Text_Widget("Your Story", Colors.white, GoogleFonts.nunito,sz: 13),
                          SizedBox(width: 15,),
                          Text_Widget("Your Story", Colors.white, GoogleFonts.nunito,sz: 13),
                          SizedBox(width: 15,),
                          Text_Widget("Your Story", Colors.white, GoogleFonts.nunito,sz: 13),
                          SizedBox(width: 15,),
                          Text_Widget("Your Story", Colors.white, GoogleFonts.nunito,sz: 13),
                          SizedBox(width: 15,),
                          Text_Widget("Your Story", Colors.white, GoogleFonts.nunito,sz: 13),
                          SizedBox(width: 15,),
                          Text_Widget("Your Story", Colors.white, GoogleFonts.nunito,sz: 13),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Divider_Widget(wi:380),
              SizedBox(height: 10,),
              Post_Widget(
                Picture_Circle("assets/images/p.jpg",he: 40,wi:40),
                 Text_Widget("Babar_999", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 "assets/images/p.jpg",
                 Picture_Circle("assets/images/p.jpg",he: 30,wi:30),
                 Text_Widget("Saad_123", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("44,999 others", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("There is no game without pain!", Colors.white, GoogleFonts.nunito,sz: 15,)
                 ),
              SizedBox(height: 20,),
              Post_Widget(
                Picture_Circle("assets/images/p.jpg",he: 40,wi:40),
                 Text_Widget("Babar_999", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 "assets/images/p.jpg",
                 Picture_Circle("assets/images/p.jpg",he: 30,wi:30),
                 Text_Widget("Saad_123", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("44,999 others", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("There is no game without pain!", Colors.white, GoogleFonts.nunito,sz: 15,)
                 ),   
              SizedBox(height: 20,),
              Post_Widget(
                Picture_Circle("assets/images/p.jpg",he: 40,wi:40),
                 Text_Widget("Babar_999", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 "assets/images/p.jpg",
                 Picture_Circle("assets/images/p.jpg",he: 30,wi:30),
                 Text_Widget("Saad_123", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("44,999 others", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("There is no game without pain!", Colors.white, GoogleFonts.nunito,sz: 15,)
                 ),
              SizedBox(height: 20,),
              Post_Widget(
                Picture_Circle("assets/images/p.jpg",he: 40,wi:40),
                 Text_Widget("Babar_999", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 "assets/images/p.jpg",
                 Picture_Circle("assets/images/p.jpg",he: 30,wi:30),
                 Text_Widget("Saad_123", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("44,999 others", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("There is no game without pain!", Colors.white, GoogleFonts.nunito,sz: 15,)
                 ),   
              SizedBox(height: 20,),
              Post_Widget(
                Picture_Circle("assets/images/p.jpg",he: 40,wi:40),
                 Text_Widget("Babar_999", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 "assets/images/p.jpg",
                 Picture_Circle("assets/images/p.jpg",he: 30,wi:30),
                 Text_Widget("Saad_123", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("44,999 others", Colors.white, GoogleFonts.nunito,sz: 15,fw: FontWeight.bold),
                 Text_Widget("There is no game without pain!", Colors.white, GoogleFonts.nunito,sz: 15,)
                 ),            
                 
            ],
          ),
        ),
      ),
    );
  }
}