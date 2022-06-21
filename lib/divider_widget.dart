import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Divider_Widget({double he=0.5,double wi=130.0,Colorr=Colors.grey})
{
  return Padding(
          padding:EdgeInsets.symmetric(horizontal:10.0),
          child:Container(
          height:he,
          width:wi,
          color:Colorr,
          ),
        );
}