import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_test/constant/constant.dart';
import 'package:notes_app_test/models/notes_models.dart';
import 'package:notes_app_test/screens/HomePage.dart';
void main() async {

await Hive.initFlutter();
Hive.registerAdapter(NotesModelsAdapter());
Hive.openBox<NotesModels>(kNotes);
  runApp(
    const NotesApp ());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home:const HomePage() ,
    );
  }
}