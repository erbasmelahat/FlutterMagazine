import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({ Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Text(
          "Profile Page",
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



