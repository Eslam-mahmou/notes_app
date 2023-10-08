import 'package:flutter/material.dart';
import 'package:notes_app_test/screens/editNotes.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

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
              title:const Text(
                'Flutter Tips',
                style: TextStyle(
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
                child: Text('Create the project by eslam mahmoud',
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
                  child: Text('25/5/2023',
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