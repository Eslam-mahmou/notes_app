import 'package:flutter/material.dart';
import 'package:notes_app_test/models/notes_models.dart';
import 'package:notes_app_test/screens/editNotes.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key,required this.note});
final NotesModels note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
return const EditNote();
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(left: 22,top: 26,bottom: 24),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          
          children: [
            ListTile(
              title: Text(
                note.title,
                style:const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              trailing: IconButton(onPressed: (){
    
              }, icon:const Icon(Icons.delete,
              size: 36,
              color: Colors.black,)),
            
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24,bottom: 22),
                child: Text(note.subtitle,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(.4)
                ),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Text(note.date,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(.4)
                  ),),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}