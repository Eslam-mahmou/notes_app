import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_test/Cubit&Bloc/ReadNotesState.dart';
import 'package:notes_app_test/constant/constant.dart';
import 'package:notes_app_test/models/notes_models.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super((InitialReadNotesState()));

  addNote(NotesModels note)async{
    emit(LoadingReadNotesState());
      try {
  var box=Hive.box<NotesModels>(kNotesBox);
  await box.add(note);
  emit(SuccessReadNotesState());
}   catch (e) {
emit(
  FailureReadNotesState(
  eMessage: e.toString()
));
}
  }
}