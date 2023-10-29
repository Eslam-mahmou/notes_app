import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_test/Cubit&Bloc/ReadNotesCubit.dart';
import 'package:notes_app_test/Cubit&Bloc/ReadNotesState.dart';
import 'package:notes_app_test/models/notes_models.dart';

import 'AddButton.dart';
import 'CustomTextField.dart';
import 'itemColor.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subtitle;

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
              onSaved: (value) {
                title = value;
              },
              labelText: 'Title',
              text: 'Title',
              maxLines: 1),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
              onSaved: (value) {
                subtitle = value;
              },
              labelText: 'Content',
              text: 'Content',
              maxLines: 6),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(height: 60, child: ColorsListView()),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<ReadNotesCubit, ReadNotesState>(
            builder: (context, state) {
              return AddButton(
                isLoading: state is LoadingReadNotesState,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var note = NotesModels(
                        color: Colors.blue.value,
                        date: DateTime.now().toString(),
                        subtitle: subtitle!,
                        title: title!);
                        BlocProvider.of<ReadNotesCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
