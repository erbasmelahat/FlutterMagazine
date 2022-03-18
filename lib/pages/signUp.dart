// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'login.dart';


class Register extends StatelessWidget{
  const Register({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blue.shade50,
       body: Stack(
        //  alignment: Alignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 110, left: 40),
             child: Text("Create Your \n Account", style: TextStyle(
               color: Colors.grey.shade800,
               fontSize: 40,
               fontWeight: FontWeight.w300,
             ),),
           ),
           Container(
             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3),
             width: double.infinity,
             height: 700,
             decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),

             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Sign Up", style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
               ),),
               const SizedBox(
                 height: 40,
               ),
               TextFormField(
                 decoration: const InputDecoration(
                   icon: Icon(Icons.person_outline),
                   hintText: 'Example: erbasmelahat',
                   labelText: 'Username'),
                   validator: (value) {  if (value!.isEmpty) {  return 'Bu alanı boş bıraktınız!'; } },
               ),
                const SizedBox(
                 height: 30,
               ),
               TextFormField(
                 decoration: const InputDecoration(
                   icon: Icon(Icons.password_sharp),
                   hintText: 'Example: Erbas_123*',
                   labelText: 'Password'),
                   validator: (value) {  if (value!.isEmpty) {  return 'Bu alanı boş bıraktınız!'; } },
               ),
               Align(
                 alignment: Alignment.centerRight,
                 
                 child: TextButton(onPressed: (){},child: const Text("Forget?"),
                  style: TextButton.styleFrom(
                   primary: Colors.black,), 
                 ),
               ),
               const SizedBox(
                 height: 30,
                ),
               ElevatedButton(
                 style: TextButton.styleFrom(
                   primary: Colors.black,
                   backgroundColor: Colors.white,
                   side: const BorderSide(color: Colors.white),
                   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 135,),
                 ),
                 onPressed: (){}, child: const Text("Sign Up"))
               ,
               const SizedBox(
                 height: 30,
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text("Already have an account"),
                   TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
                   }, child: const Text("Sign In")),
                 ],
               ),
              //  const SizedBox(
              //    height: 30,
              //  ),
              
               ],),
               
           )
         ],
       ) ,                
    );
  }
}