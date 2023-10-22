import 'package:flutter/cupertino.dart';

import 'AddButton.dart';
import 'CustomTextField.dart';
import 'itemColor.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
 String? title,subtitle,date;
int? color;
  GlobalKey <FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
            const  SizedBox(
                height: 25,
              ),
             CustomTextField(
              onSaved: (value){
              title=value;
              },
              labelText: 'Title', text: 'Title', maxLines: 1),
             const  SizedBox(
                height: 16,
              ),
               CustomTextField(
                onSaved: (value){
                  subtitle=value;
                },
                labelText: 'Content', text: 'Content', maxLines: 6),
        const     SizedBox(
              height: 20,
             ),
       const      SizedBox(
              height: 70,
              child: ColorsListView()),
          const   SizedBox(
              height: 50,
            ),
            AddButton(
              onPressed: (){
                if(formKey.currentState!.validate()){
          
                  
                  formKey.currentState!.save();
                  
                }
                
              },
              
            ),
                  SizedBox(
              height: 16,
            ),
            
            ],
          ),
        ),
      );
  }
}