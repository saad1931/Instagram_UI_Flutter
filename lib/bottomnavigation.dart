import 'package:flutter/material.dart';
import 'package:instagram/Login_s.dart';
import 'package:instagram/Splash_Screen.dart';
import 'package:instagram/Widgets/profile.dart';
import 'package:instagram/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class bottomnavigation_s extends StatefulWidget {
  const bottomnavigation_s({ Key? key }) : super(key: key);

  @override
  State<bottomnavigation_s> createState() => _bottomnavigation_sState();
}

class _bottomnavigation_sState extends State<bottomnavigation_s> {


 final pg=[
  const Main_Screen(),
  const Login_s(),
  const Login_s(),
  const Login_s(),
  const Main_Screen(),
 ];

  //Widget c_screen = Main_Screen();
  int c_tab=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: pg[c_tab],
        bottomNavigationBar: BottomAppBar(
          color:  Color.fromARGB(255, 44, 42, 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){
                  setState(() {
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const bottomnavigation_s()));
                    c_tab=0;
                  });
                  
                  
                }, 
                // icon: c_tab == 1
                // ? const Icon(
                //     Icons.home,
                //     color: Colors.white,
                //     size: 35,
                //   )
                // : const Icon(
                //     Icons.home_filled,
                //     color: Colors.white,
                //     size: 30,
                //   ),

                icon: c_tab==0
                ? Image.asset("assets/images/home2.png",height: 30,color: Colors.white,):Image.asset("assets/images/home.png",height: 30,color: Colors.white)

                
                ),
             
                IconButton(
                onPressed: (){
                  setState(() {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                    //c_screen=const Login_s();
                    c_tab = 1;
                    
                  });
                
                }, 
                
               icon: c_tab==1
               ? Image.asset("assets/images/s1.png",height: 30,color: Colors.white,):Image.asset("assets/images/s2.png",height: 30,color: Colors.white,)

                
                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    c_tab=2;
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                  });
                
                }, 
                //icon: Icon(Icons.add_box,color: Colors.white,size: 35,),
               icon: c_tab==2
              ? Image.asset("assets/images/add.png",height: 30,color: Colors.white,):Image.asset("assets/images/add.png",height: 30,color: Colors.white,)

                
                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                    c_tab=3;
                  });
                //icon: c_tab==3 ? Colors.white :Colors.black; 
                }, 
                icon: c_tab==3
                ? Image.asset("assets/images/heartf.png",height: 30,color: Colors.white,):Image.asset("assets/images/heart.png",height: 30,color: Colors.white,)
                
                ),
                  
              
                IconButton(
                onPressed: (){
                  setState(() {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                    c_tab=4;
                });
               
                }, 

                icon: c_tab==4
                ? Picture_Circle2("assets/images/p.jpg",):Picture_Circle("assets/images/p.jpg"),                
                ),
            ],
          ),
        ),
      ),
    );
  }
}

