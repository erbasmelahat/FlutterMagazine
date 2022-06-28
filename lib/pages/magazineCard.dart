// ignore_for_file: file_names

// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:magazine/pages/detail.dart';

class MagazineCard extends StatelessWidget {
  const MagazineCard({
    Key? key, required this.image, required this.title, required this.writer, required this.press,
  }) : super(key: key);

  final String image, title, writer;
  final Function press;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,     
        bottom: 0,
        top: 0

      ),
       child: TextButton(
         onPressed: () {
  const Duration(seconds: 5);
     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Detail()),
  );
         
         },
         child: Column(
         children: <Widget>[
           Image.asset(image),                
            GestureDetector(
              onTap: press(
                 
              ),
              child:
              Container(
               padding: const EdgeInsets.all(8),
               decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 151, 117, 104),
                 borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                 boxShadow: [
                   BoxShadow(
                     offset: const Offset(0, 8),
                     blurRadius: 10,
                     color: Colors.brown.withOpacity(0.33),
                     
                   ),
                 ],),
               child: Row(
                 children: <Widget>[
                   RichText(text: TextSpan(
                     children: [
                       TextSpan(
                         text: "$title\n".toUpperCase(),
                         style: Theme.of(context).textTheme.button,
           
                       ),
                       
                       TextSpan(
                         // ignore: unnecessary_string_interpolations
                         text: "$writer".toUpperCase(),
                         style: const TextStyle(color:  Color.fromARGB(255, 47, 61, 68)
                         ),
                       ),
                     ]
                   ,),
                   ),
                 ],
               ),  
             ),
            )
              ],
            ),
       ),
    );
  }
}