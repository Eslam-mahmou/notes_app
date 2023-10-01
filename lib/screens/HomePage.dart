import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff303030),
        elevation: 0,
        title: Row(
          children: [
          
           const Text('Notes',
            style: TextStyle(
              fontSize: 26
            ),),
          const Spacer(),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xff303030).withOpacity(.05)
            ),
            height: 45,
            width: 45,
           child: IconButton(onPressed: (){}, icon: Icon(Icons.search,
             color: Colors.white.withOpacity(.6),)),
           )
          ],
        ),
      ),
    );
  }
}