import 'package:flutter/material.dart';
import 'package:magazine/pages/signUp.dart';

import 'login.dart';


class MemberShip extends StatefulWidget{
  const MemberShip({ Key? key}) : super(key: key);

  @override
  State<MemberShip> createState() => _MemberShipState();
}

class _MemberShipState extends State<MemberShip> {
  int pageIndex = 0;

  final pages = [
    const LoginPage(loginTitle: "Welcome Back",),
    const Register(signUpTitle: "Sign Up",),
  ];
  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
     backgroundColor: const Color.fromRGBO(206, 192, 163, 1),   
      extendBodyBehindAppBar: true,
      appBar: AppBar(
         automaticallyImplyLeading: false,
        // title: const Text(MyApp.title,
        // style: TextStyle(color: Colors.black),),
        // centerTitle: true,
        //  leading: 
        //  Builder(builder: (context) => 
            // IconButton(
              //  icon: const Icon(Icons.menu),
              //  onPressed: () => Scaffold.of(context).openDrawer(),
            //  ),
            // ,
        //  backgroundColor: Colors.transparent,
        
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
      color: Colors.black,                                                                               
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
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.person_add_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
          ),
        ]),
  ),     
     );                                 
  }
}