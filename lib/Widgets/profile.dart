import 'package:flutter/material.dart';

Widget Picture_Circle(img,{double he=100,double wi=100,})
{
  return Center(
    child: SizedBox(
      height: he,
      width: wi,
      child: CircleAvatar(
      backgroundImage: AssetImage(img),)),
  );
}

Widget Picture_Circle2(img)
{
  return Center(
    child: Container(
      height: 60,
      width: 60,
      decoration :BoxDecoration(
        border: Border.all(color: Colors.red,width: 2),
        shape: BoxShape.circle
      ),
      child: CircleAvatar(
      backgroundImage: AssetImage(img),
      )
      ),
  );
  }