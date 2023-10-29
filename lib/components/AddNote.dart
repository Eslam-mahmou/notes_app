import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_test/Cubit&Bloc/FeatchNotesCubit.dart';
import 'package:notes_app_test/Cubit&Bloc/ReadNotesCubit.dart';
import 'package:notes_app_test/Cubit&Bloc/ReadNotesState.dart';
import 'package:notes_app_test/components/AddNoteForm.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<ReadNotesCubit, ReadNotesState>(
      listener: (context, state) {
       if(state is FailureReadNotesState){
        print('failled ${state.toString()}');
       }
       if(state is SuccessReadNotesState){
       BlocProvider.of<FeatchNotesCubit>(context).featchNotes();
       Navigator.pop(context);
       }
      },
      builder: (context, state) {
        
     return    AbsorbPointer(
      absorbing: state is LoadingReadNotesState ?true :false,
      child: SingleChildScrollView(child: Padding(
        padding:  EdgeInsets.only(left: 16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom,),
        child:const AddNoteForm(),
      )));
      },
    );
  }
}
