import 'package:flutter/material.dart';
import 'package:notes_app_test/constant/constant.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 28 ,
        backgroundColor: kColor,
      ),
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

    itemCount: 10,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index){
    
   return Padding(
     padding: const EdgeInsets.only(right: 5),
     child: ItemColor(),
   );
    });
  }
}