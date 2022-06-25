import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Textfield_Widget( l_text,ot,ct)
{
  return Center(
    child: SizedBox(
      //height: 50,
      width: 300,
      child: TextField(
        obscureText: ot,
        style: TextStyle(color: Colors.white),
        controller: ct,
        decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Color.fromARGB(255, 44, 42, 42),
            contentPadding: EdgeInsets.all(15.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
        ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
          ),
          
          hintText:l_text,
          hintStyle:TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}