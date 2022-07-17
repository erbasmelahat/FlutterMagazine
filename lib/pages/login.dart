// ignore_for_file: file_names


// import 'package:flutter/cupertino.dart';
// import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:magazine/pages/home.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget{

  const LoginPage({ Key? key, required this.loginTitle}) : super(key: key);

  final String loginTitle;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = "";
  String password= "";
  late FirebaseAuth auth;
  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;
    
  }




  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
           TitlePage1(signUpTitle: widget.loginTitle),    
           Column(            
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Padding(
                 padding: EdgeInsets.only(
                 top: 280,
                 ),),
              Center(
                child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                   child: Container(
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey[500]?.withOpacity(0.5),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Center(
                       child: TextFormField(
                        cursorColor: const Color.fromARGB(255, 27, 94, 32),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      
                        decoration: const InputDecoration(    
                                                 
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.email,
                              size: 17,
                            ),),
                          
                          border: InputBorder.none,
                          labelText: 'Email Address'),
                            onChanged: (value){
                              email = value;
                          
                  
                  },                     
                          validator: (value) {  if (value!.isEmpty) {  return 'Bu alanı boş bıraktınız!'; }
                             return null; },
                         ),),
                   ),),
              ),
               Center(
                child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                   child: Container(
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey[500]?.withOpacity(0.5),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Center(
                       child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                       
                        decoration: const InputDecoration(                           
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.lock,
                              size: 17,
                            ),),
                          border: InputBorder.none,
                          labelText: 'Password'), 
                            onChanged: (value){
                              password = value;
                           
                  },                    
                          validator: (value) {  if (value!.isEmpty) {  return 'Bu alanı boş bıraktınız!'; }
                             return null; },
                         ),),
                   ),),
              ),
               Center(
                child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                   child: Container(
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.grey[500]?.withOpacity(0.5),
                       borderRadius: BorderRadius.circular(10),
                     ),
                    
                       child: TextButton(
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                        ),
                      onPressed: () async {
                                             try {
                                    await auth.signInWithEmailAndPassword(
                                        email: email, password: password);
                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (contex) => const HomePage(),
                                      ),
                                    );
                                                 } on FirebaseAuthException catch (e) {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title: const Text("Ops! Login Failed"),
                                       shape: RoundedRectangleBorder(
		                                    borderRadius: BorderRadius.circular(15),),
                                        contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
                                        backgroundColor: const Color.fromARGB(255, 245, 234, 190), 
                                        titleTextStyle: const TextStyle(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.brown,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                        content: Text('${e.message}',
                                        
                                        
                                        ),
                                        contentTextStyle: const TextStyle(
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.brown,
                                          fontWeight: FontWeight.normal,

                                        ),
                                        ),);
                        

                                      }
                                        },
                    
                                      
                                                                                            
                      child: const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text('Login',
                        ),),
                      ),
                   ),),),
              ],
      ),   
        ],
      ),
    ); 
  }
  
}

class TitlePage1 extends StatelessWidget {
  const TitlePage1({
    Key? key,
    required this.signUpTitle,
  }) : super(key: key);

  final String signUpTitle;

  @override
  Widget build(BuildContext context) {
     return 
       Padding(
         padding: const EdgeInsets.only(bottom: 450),
         child: Center(
          child: Text(
            signUpTitle,
             style: const TextStyle(
               color: Colors.black,
               fontSize: 30,
               fontWeight: FontWeight.normal,           
             ),),
      ),
       );
  }

    
  }
