import 'package:flutter/material.dart';
import 'package:notes_app_test/components/CustomListTile.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: ((context, index) {
  
      return const Padding(
        padding:  EdgeInsets.only(bottom: 10),
        child:  CustomListTile(),
      );
    }));
  }
}