import 'package:flutter/material.dart';
import 'package:notes_app_test/components/NotesViewBody.dart';
import 'package:notes_app_test/components/ShowModelButtomSheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    floatingActionButton: FloatingActionButton(onPressed: (){
    showModalBottomSheet(context: context, builder: (context){
      return const AddNote();
    },
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ) 
    );
    },
    child:const Icon(Icons.add)),
    
      body:const NotesViewBody()
      
    );
  }
}