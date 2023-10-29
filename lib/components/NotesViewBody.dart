import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_test/Cubit&Bloc/FeatchNotesCubit.dart';

import 'CustomAppBar.dart';
import 'CustomListView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
   BlocProvider.of<FeatchNotesCubit>(context).featchNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
        child: Column(
          children:const [
           SizedBox(
                  height: 50,
                ),
                CustomAppBar(
                  text: 'Notes',
                  icon: Icon(Icons.search),
                ),
                 SizedBox(
                  height: 20,
                ),
              Expanded(child: CustomListView())
        ],),
      );
  }
}