import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Widgets/box_widget.dart';
import 'package:instagram/Widgets/profile.dart';
import 'package:instagram/Widgets/textwidget.dart';
import 'package:instagram/bottomnavigation.dart';
import 'package:instagram/signin_s.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_s extends StatefulWidget {
  const Login_s({ Key? key }) : super(key: key);

  @override
  State<Login_s> createState() => _Login_sState();
}

class _Login_sState extends State<Login_s> {

    //shared preference code
  late SharedPreferences logindata;
  late String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  //shared preference code
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121212), 
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Text_Widget("Instagram",Colors.white,GoogleFonts.cookie,sz: 80),
              SizedBox(height: 55,),
              Picture_Circle("assets/images/p.jpg"),

              SizedBox(height: 10,),
              
              Center(
                child: Text_Widget('Welcome $username!', Colors.white, GoogleFonts.nunito,sz: 20),
                
              ),
              
              
              SizedBox(height: 40,),
              Login_Box2(context, childparam: Text_Widget("Next", Colors.white,GoogleFonts.nunito,sz: 20,fw: FontWeight.bold),),
              SizedBox(height: 20,),
              Text_Widget("Or", Colors.grey, GoogleFonts.nunito,sz: 15),
              SizedBox(height: 20,),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xff3797EF)
                  ),
                  onPressed: () {
                    logindata.setBool('login', true);
                    Navigator.pushReplacement(context,
                        new MaterialPageRoute(builder: (context) => Signin_S()));
                  },
                  child: Text_Widget("Logout", Colors.white,GoogleFonts.nunito,sz: 20,fw: FontWeight.bold)),
                ),
              ),

              SizedBox(height: 20,),
              Text_Widget("switch acccounts", Color(0xff3797EF),GoogleFonts.nunito,sz: 15,),
              SizedBox(height: 100,),
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