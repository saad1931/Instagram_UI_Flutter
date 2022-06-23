import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Widgets/box_widget.dart';
import 'package:instagram/Widgets/textfield_widget.dart';
import 'Widgets/textwidget.dart';
import 'divider_widget.dart';

class Signin_S extends StatelessWidget {
  const Signin_S({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121212),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(height: 50,),
                 Text_Widget("Instagram",Colors.white,GoogleFonts.cookie,sz: 80),
                 SizedBox(height: 50,),
                 Textfield_Widget("Enter your username", false),
                 SizedBox(height: 40,),
                 Textfield_Widget("Password", true),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     SizedBox(width: 175,),
                     Login_Box(context, childparam: Text_Widget("Forgot Password?", Color(0xff3797EF),GoogleFonts.nunito,sz: 15,),pcolor: 0xff121212,he: 20,wi: 180),
                   ],
                 ),
                 SizedBox(height: 40,),
                 Login_Box2(context,childparam: Text_Widget("Login", Colors.white,GoogleFonts.nunito,sz: 20,fw: FontWeight.bold),),
                 SizedBox(height: 30,),
                 Row(
                  children: [
                    SizedBox(width: 97,),
                    Icon(Icons.facebook,color:Color(0xff3797EF),),
                    SizedBox(width: 10,),
                    Text_Widget("Log in with Facebook", Color(0xff3797EF), GoogleFonts.nunito,sz:15)
                  ],
                 ),
                 SizedBox(height: 30,),
                 Row(
                  children: [
                    SizedBox(width: 5,),
                    Divider_Widget(),
                    SizedBox(width: 10,),
                    Text_Widget("OR", Colors.grey,GoogleFonts.nunito,sz:20 ),
                    SizedBox(width: 10,),
                    Divider_Widget(),
                  ],
                 ),
                SizedBox(height: 55,),
                Row(
                  children: [
                    SizedBox(width: 70,),
                    Text_Widget("Don't have an account?", Colors.grey, GoogleFonts.nunito,sz: 15),
                    SizedBox(width: 4,),
                    Text_Widget("Sign up.", Color(0xff3797EF), GoogleFonts.nunito,sz: 18),
                      ],
                 ),
                 SizedBox(height: 55,),
                 Row(
                   children: [
                     Divider_Widget(wi:330),
                   ],
                 ),
                 SizedBox(height: 10,),
                 Text_Widget("Instagram from Meta", Colors.grey, GoogleFonts.nunito,sz:15)
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}