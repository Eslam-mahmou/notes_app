import 'package:flutter/material.dart';
import 'package:notes_app_test/components/NotesViewBody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody()
      
    );
  }
}