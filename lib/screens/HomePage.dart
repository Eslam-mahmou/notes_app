import 'package:flutter/material.dart';
import 'package:notes_app_test/components/AddNote.dart';
import 'package:notes_app_test/components/NotesViewBody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    floatingActionButton: FloatingActionButton(onPressed: (){
    showModalBottomSheet(
      
      context: context, 
      isScrollControlled: true,
      builder: 
      
      (context){
        
      return const AddNote();
    },
    shape:RoundedRectangleBorder(
    
      borderRadius: BorderRadius.circular(16),
    ) 
    );
    },
    child:const Icon(Icons.add)),
    
      body:const NotesViewBody()
      
    );
  }
}