// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:magazine/pages/profile.dart';
import 'package:magazine/pages/body.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
   const HomePage({ Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final pages = [
    const RealHome(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(MyApp.title,
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: Builder(builder: (context) => 
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            ),
        backgroundColor: Colors.transparent
        
      ),
      body: pages[pageIndex],
      
      bottomNavigationBar: Container( 
      height: 54, 
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20
      ),
                                               
      decoration: BoxDecoration(                                                   
      borderRadius: BorderRadius.circular(30),  
      color: Colors.black87,                                                                               
      ),
         
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 20,
                  ),
          ),
        ]),
  ),                                                                         
   
     drawer: Drawer(
       backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),),
        child: ListView(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          children: [
             DrawerHeader(                                        
              decoration: BoxDecoration( 
                image: const DecorationImage(
          image: AssetImage("assets/e.jpg"),
          fit: BoxFit.contain,),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.transparent,
                 border: const Border(                   
                    top: BorderSide(width: 1.0, color: Colors.white54),
                    left: BorderSide(width: 1.0, color: Colors.white54),
                    right: BorderSide(width: 1.0, color: Colors.white54),
                    bottom: BorderSide(width: 1.0, color: Colors.white54,),
                 ),                    
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 13,
                  left: 80
                ),
                child: Text('Magazine',
                
                style: TextStyle(
                  
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),
                ),
              ),
              
            ),
            ListTile(
               shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white54, width: 0.5),
                  borderRadius: BorderRadius.circular(20)),       
              title: const Text('Recorded',              
              style: TextStyle(                
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Colors.white54,
                ),
                
              ),
              onTap: () {
                Navigator.pop(context);
               
              },
              
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white54, width: 0.5),
                  borderRadius: BorderRadius.circular(20)),      
              title: const Text('Recently Read',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Colors.white54
                ),),
              onLongPress: (){},
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
}
}
