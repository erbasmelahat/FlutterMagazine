import 'package:flutter/material.dart';


class Literature extends StatelessWidget {
  const Literature({ Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Text(
          "Literature Page",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
      
  }

  
}



