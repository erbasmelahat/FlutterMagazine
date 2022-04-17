// ignore_for_file: file_names


// import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Register extends StatefulWidget{

  const Register({ Key? key, required this.signUpTitle}) : super(key: key);

  final String signUpTitle;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
           TitlePage1(signUpTitle: widget.signUpTitle),    
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
                              email = value.toString().trim();
                  
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
                              password = value.toString().trim();
                           
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
                        try{
                          await auth.createUserWithEmailAndPassword(email: email, password: password);
                           showDialog(
                                      context: context,
                                      builder: (ctx) => const AlertDialog(
                                        title:
                                            Text(' Sucessfully Register.You Can Login Now'),
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //             const SnackBar(
                          //                 content: Text('Sucessfully Register.You Can Login Now'),
                          //                 // child: Text(
                          //                 //     'Sucessfully Register.You Can Login Now'),
                          //                  duration: Duration(seconds: 5),
                          //               ),                                                                       
                                    ),);
                                    // Navigator.of(context).pop();
                        }
                        on FirebaseAuthException catch (e) {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title:
                                            const Text(' Ops! Registration Failed'),
                                        content: Text('${e.message}',
                                        ),
                                        ),);
                        

                                      }
                      } ,
                                      
                                                                                            
                      child: const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text('Sign Up',
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
     return Padding(
      padding: const EdgeInsets.only(
        top: 170,
        left: 160
      ),
      child: Text(
        signUpTitle,
         style: const TextStyle(
           color: Colors.black,
           fontSize: 30,
           fontWeight: FontWeight.normal,           
         ),),
    );
  }

    
  }
