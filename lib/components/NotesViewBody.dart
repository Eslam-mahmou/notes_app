import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'CustomListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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