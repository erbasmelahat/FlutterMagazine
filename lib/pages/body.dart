// ignore_for_file: file_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import 'cardGroup.dart';
import 'groups.dart';
import 'search.dart';


class RealHome extends StatefulWidget {
  const RealHome({ Key? key}) : super(key: key);

  @override
  State<RealHome> createState() => _RealHomeState();
}

class _RealHomeState extends State<RealHome> {

  @override
  Widget build(BuildContext context) {
      // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[        
           Search(),
           GroupsOrder(),
           MagazineCardGroup(),
         ],
       ),
    );
      
  }
}







