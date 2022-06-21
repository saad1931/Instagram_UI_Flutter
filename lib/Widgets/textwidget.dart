import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget Text_Widget(textt,colorrr,ff,{double sz=20,fw}){
  return Center(
    child: Container(
      child: Text(
        textt,
        style:ff(fontSize: sz,color:colorrr,fontWeight: fw)
      ),
    ),
  );
}
