import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_test/Cubit&Bloc/FeatchNotesState.dart';
import 'package:notes_app_test/constant/constant.dart';
import 'package:notes_app_test/models/notes_models.dart';

class FeatchNotesCubit extends Cubit<FeatchNotesState>{
 FeatchNotesCubit(): super(InitialFeatchNotesState());

List<NotesModels>? notes;
featchNotes(){
var box=Hive.box<NotesModels>(kNotesBox);
notes=box.values.toList();
emit(SuccessFeatchNotesState());

}

}