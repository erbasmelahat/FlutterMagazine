// ignore_for_file: file_names


// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget{

  const Register({ Key? key, required this.signUpTitle}) : super(key: key);

  final String signUpTitle;

  // void showAlertDialog(BuildContext context){
    
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) =>
  //        AlertDialog(content: Container(
  //         width: MediaQuery.of(context).size.width / 4,
  //         height: MediaQuery.of(context).size.height / 15,
  //         color: Colors.transparent,
  //       ))
  //     );}
  


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         TitlePage1(signUpTitle: signUpTitle),    
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
                   width: 350,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.grey[500]?.withOpacity(0.5),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(
                     child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(                            
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.abc
                          ),
                        ),
                        border: InputBorder.none,                            
                       //  hintText: 'Example: erbasmelahat',
                        labelText: 'Username'),                     
                        validator: (value) {  if (value!.isEmpty) {  return 'Bu alanı boş bıraktınız!'; }
                           return null; },
                       ),                   ),
                 ),              ),
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
                    onPressed: () {   
                      // showAlertDialog(context);
                      },  
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => const HomePage()));                                                                               
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text('Sign Up',
                      ),),
                    ),
                 ),),),
            ],
    ),   
      ],
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
