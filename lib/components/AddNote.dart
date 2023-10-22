import 'package:flutter/material.dart';
import 'package:notes_app_test/components/AddNoteForm.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AddNoteForm()
    );
  }
}
