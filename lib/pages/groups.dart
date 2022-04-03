// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class GroupsOrder extends StatelessWidget {
  const GroupsOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: const <Widget>[
          Groups(text: "Science"),
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
      // margin: const EdgeInsets.only(
      //   top: 30,
      // ),
       height: 24,
       child: Stack(
         children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Text(
               text,
               style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
           ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
            child: Container(
                margin: const EdgeInsets.only(right: 1),
                height: 1,
                color: Colors.black.withOpacity((0.5)),
           
           
           ),
            ),
       ],
       ),
     );
  }
}