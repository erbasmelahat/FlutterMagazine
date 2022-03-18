import 'package:flutter/material.dart';

import '../main.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(MyApp.title,
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: Builder(builder: (context) => // Ensure Scaffold is in context
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            ),
            actions: [
              IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              )],
        backgroundColor: Colors.transparent  
            
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: Colors.transparent,
        destinations: [
          NavigationDestination(
            icon: Builder(
              builder: (context) {
                return const Icon(Icons.home);
              }
            ),
            label: 'Home',),
             NavigationDestination(
            icon: Builder(
              builder: (context) {
                return const Icon(Icons.person);
              }
            ),
            label: 'User',)
        ],),
     drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                // shape: BoxShape.rectangle,
              
                color: Colors.black12,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
               
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onLongPress: (){},
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
}
}
