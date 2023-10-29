import 'package:flutter/material.dart';
import 'package:notes_app_test/constant/constant.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key,required this.onPressed,this.isLoading=false});
final void Function() onPressed;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kColor,
          shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(12),
     
          ),
          minimumSize: Size(MediaQuery.of(context).size.width,
          45),
        ),
       onPressed: onPressed,
        
       child:isLoading ?
    const   Center(
        child: CircularProgressIndicator(
          color: Colors.black,
          
        ),
       )
       
       :
       const Text('Add',
       style: TextStyle(
        fontSize: 22
       ),),
      ),
    );
  }
}