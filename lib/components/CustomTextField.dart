import 'package:flutter/material.dart';
import 'package:notes_app_test/constant/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.labelText,required this.text,required this.maxLines});
 final String text ,labelText;
 final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kColor,
      maxLines: maxLines,
  decoration: InputDecoration(
      
    hintText: text,
    hintStyle:const TextStyle(
      color: Color(0xff53D0B3),
      fontSize: 18
    ),
    label: Text(labelText),
  labelStyle:const TextStyle(
    color: kColor
  ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(
        color:kColor
      )
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(
        color: Colors.white
      )
    )
   
  ),
    );
  }
}