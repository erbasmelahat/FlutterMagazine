import 'package:flutter/material.dart';
import 'package:magazine/pages/profile.dart';
import 'package:magazine/pages/realHome.dart';

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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
               
              },
            ),
            ListTile(
              title: const Text('Item 2'),
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
