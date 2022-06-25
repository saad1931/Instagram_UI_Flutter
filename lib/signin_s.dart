import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Login_s.dart';
import 'package:instagram/Widgets/box_widget.dart';
import 'package:instagram/Widgets/textfield_widget.dart';
import 'package:instagram/bottomnavigation.dart';
import 'Widgets/textwidget.dart';
import 'divider_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signin_S extends StatefulWidget {
  const Signin_S({ Key? key }) : super(key: key);

  @override
  State<Signin_S> createState() => _Signin_SState();
}

class _Signin_SState extends State<Signin_S> {

  //shared preference code
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Login_s()));
    }
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  
  //shared preference code

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
                 Textfield_Widget("Enter your username", false,username_controller),
                 SizedBox(height: 40,),
                 Textfield_Widget("Password", true,password_controller),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     SizedBox(width: 175,),
                     Text_Widget("Forgot Password?", Color(0xff3797EF),GoogleFonts.nunito,sz: 15,),
                   ],
                 ),
                 SizedBox(height: 40,),

                 Center(
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xff3797EF)
                  ),
                  onPressed: () {
                      String username = username_controller.text;
                      String password = password_controller.text;
                      if (username != '' && password != '') {
                        print('Successfull');
                        logindata.setBool('login', false);
                        logindata.setString('username', username);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => bottomnavigation_s()));
                      }
                    },
                  child: Text_Widget("Log-In", Colors.white,GoogleFonts.nunito,sz: 20,fw: FontWeight.bold)),
                ),
                 ),

              
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



