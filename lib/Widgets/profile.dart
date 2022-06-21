import 'package:flutter/material.dart';

Widget Picture_Circle(img)
{
  return Center(
    child: SizedBox(
      height: 100,
      width: 100,
      child: CircleAvatar(
      backgroundImage: AssetImage(img),)),
  );
}