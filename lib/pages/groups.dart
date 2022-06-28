// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:magazine/pages/science.dart';
// import 'package:magazine/pages/literature.dart';
// import 'package:magazine/pages/science.dart';

class GroupsOrder extends StatefulWidget {
  const GroupsOrder({
    Key? key,
  }) : super(key: key);

  @override
  State<GroupsOrder> createState() => _GroupsOrderState();
}

class _GroupsOrderState extends State<GroupsOrder> {
  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Center(
        child: Row(
          
          children: const <Widget>[
            Groups(text: "Science",
            ),
            SizedBox(
              width: 50,
              height: 0,
            ), 
            Groups(text: "Literature"),
            SizedBox(
              width: 50,
              height: 0,
            ), 
            Groups(text: "Crossword"),        
          ],
        ),
      ),
    );
  }
}

class Groups extends StatelessWidget {
  const Groups({
    Key? key,
     required this.text,
  }) : super(key: key);
  
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 34,
       child: TextButton(
         
         onPressed: () { 
          
          },
         child: Stack(
           children: <Widget>[
                 Center(
                  child: Text(
                   text,
                   style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal, color: Color.fromARGB(255, 129, 91, 75)),
             ),
                ),
              Center(
                child: Container(
                    margin: const EdgeInsets.only(right: 1),
                    height: 1,
                    color: Colors.black.withOpacity((0.5)),
             ),
              ),
              // ),
         ],
         ),
       ),
     );
  }
}