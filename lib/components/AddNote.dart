import 'package:flutter/material.dart';
import 'package:notes_app_test/components/AddButton.dart';
import 'package:notes_app_test/components/CustomTextField.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children:const [
            SizedBox(
              height: 40,
            ),
           CustomTextField(labelText: 'Title', text: 'Title', maxLines: 1),
            SizedBox(
              height: 20,
            ),
             CustomTextField(labelText: 'Content', text: 'Content', maxLines: 6),
             
          SizedBox(
            height: 120,
          ),
          AddButton(),
             
          SizedBox(
            height: 10,
          ),
          
          ],
        ),
      ),
    );
  }
}
