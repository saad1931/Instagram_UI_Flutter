import 'package:flutter/material.dart';
import 'package:instagram/Login_s.dart';
import 'package:instagram/Widgets/profile.dart';
import 'package:instagram/main_screen.dart';

class bottomnavigation_s extends StatefulWidget {
  const bottomnavigation_s({ Key? key }) : super(key: key);

  @override
  State<bottomnavigation_s> createState() => _bottomnavigation_sState();
}

class _bottomnavigation_sState extends State<bottomnavigation_s> {
  Widget c_screen = Main_Screen();
  int c_tab=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Main_Screen(),
        bottomNavigationBar: BottomAppBar(
          color:  Color.fromARGB(255, 44, 42, 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const bottomnavigation_s()));
                  });
                }, 
                icon: Icon(Icons.home,color: Colors.white,size: 30),
                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                  });
                }, 
                icon: Icon(Icons.search,color: Colors.white,size: 30),
                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                  });
                }, 
                icon: Icon(Icons.add_box,color: Colors.white,size: 35,),
                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                  });
                }, 
                icon: Image.asset("assets/images/heart.png",height: 25,width:25,color: Colors.white,),
                ),
                IconButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_s()));
                  });
                }, 
                icon: Picture_Circle("assets/images/p.jpg",he: 30,wi:40),
                ),
            ],
          ),
        ),
      ),
    );
  }
}