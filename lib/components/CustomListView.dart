import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_test/Cubit&Bloc/FeatchNotesCubit.dart';
import 'package:notes_app_test/Cubit&Bloc/FeatchNotesState.dart';
import 'package:notes_app_test/components/CustomListTile.dart';
import 'package:notes_app_test/models/notes_models.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchNotesCubit, FeatchNotesState>(
      
      builder: (context, state) {
        List<NotesModels> notes=BlocProvider.of<FeatchNotesCubit>(context).notes??[];
        return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: CustomListTile(
                  note: notes[index],
                ),
              );
            }));
      },
    );
  }
}
