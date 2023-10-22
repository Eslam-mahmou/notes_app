import 'package:flutter/material.dart';
import 'package:notes_app_test/components/CustomAppBar.dart';
import 'package:notes_app_test/components/CustomTextField.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(children:const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(text: 'Edit Note', icon: Icon(Icons.check)),
          SizedBox(
            height: 40,
          ),
          CustomTextField(labelText: 'Title', text: 'Title', maxLines: 1),
         SizedBox(
            height: 20,
          ), 
           CustomTextField(labelText: 'Content', text: 'Content', maxLines: 6)
          
      
          
        ],),
      ),
    );
  }
}