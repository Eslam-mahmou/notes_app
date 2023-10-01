import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.text,required this.icon});
final String text;
final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
        style: TextStyle(
          fontSize: 25
        ),),
       
        CustomIcon(
          icon:icon ,
        ),
      ],
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key,required this.icon});
final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:const Color(0xff606060).withOpacity(.2)
      ),
      height: 45,
      width: 45,
      child: IconButton(onPressed: (){

      }, icon: icon,
      color: Colors.white.withOpacity(.5),),
    );
  }
}