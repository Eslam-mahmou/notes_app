import 'package:flutter/material.dart';
import 'package:notes_app_test/constant/constant.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kColor,
        shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(12),
 
        ),
        minimumSize: Size(MediaQuery.of(context).size.width,
        45),
      ),
     onPressed: (){
    
    },
     child:const Text('Add',
     style: TextStyle(
      fontSize: 22
     ),),
    );
  }
}