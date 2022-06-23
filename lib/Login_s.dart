import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Widgets/box_widget.dart';
import 'package:instagram/Widgets/profile.dart';
import 'package:instagram/Widgets/textwidget.dart';
import 'package:instagram/bottomnavigation.dart';


class Login_s extends StatefulWidget {
  const Login_s({ Key? key }) : super(key: key);

  @override
  State<Login_s> createState() => _Login_sState();
}

class _Login_sState extends State<Login_s> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121212), 
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 130,),
              Text_Widget("Instagram",Colors.white,GoogleFonts.cookie,sz: 80),
              SizedBox(height: 55,),
              Picture_Circle("assets/images/p.jpg"),
              SizedBox(height: 10,),
              Text_Widget("Muhammad Saad", Colors.white,GoogleFonts.nunito,sz: 20),
              SizedBox(height: 40,),
              Login_Box2(context, childparam: Text_Widget("Login", Colors.white,GoogleFonts.nunito,sz: 20,fw: FontWeight.bold),),
              SizedBox(height: 20,),
              Login_Box(context,childparam: Text_Widget("switch acccounts", Color(0xff3797EF),GoogleFonts.nunito,sz: 15,),pcolor: 0xff121212,he: 20,wi: 180),
              SizedBox(height: 140,),
              Row(
                children: [
                  SizedBox(width: 70,),
                  Text_Widget("Don't have an account?", Colors.grey, GoogleFonts.nunito,sz: 15),
                  SizedBox(width: 4,),
                  Text_Widget("Sign up", Colors.white, GoogleFonts.nunito,sz: 18),
                ],
              )

            
            ],
          ),
        ),
      ),
    );
  }
}