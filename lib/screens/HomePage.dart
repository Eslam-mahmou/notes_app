import 'package:flutter/material.dart';
import 'package:notes_app_test/components/CustomAppBar.dart';
import 'package:notes_app_test/components/CustomListTile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:const  [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            text: 'Notes',
            icon: Icon(Icons.search),
          ),
           SizedBox(
            height: 40,
          ),
          CustomListTile()
        ],
      ),
    );
  }
}