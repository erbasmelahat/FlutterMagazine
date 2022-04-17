// ignore: file_names
import 'package:flutter/material.dart';
import 'package:magazine/pages/home.dart';
// import 'home.dart';

class LoginPage1 extends StatefulWidget{
  const LoginPage1({ Key? key, required this.loginTitle}) : super(key: key);

  final String loginTitle;
  // final _formKey = GlobalKey<FormState>;

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {

  
  

  @override
  Widget build(BuildContext context) {
    String email= "";
    String password="";
    return Form(     
      child: Stack(
        
        children: [
          TitlePages(loginTitle: widget.loginTitle),
           Column(   
            crossAxisAlignment: CrossAxisAlignment.start,
             children: const [            
                Padding(
                 padding: EdgeInsets.only(
                 top: 350,
                 ),),
                  Email(),
                  Password(),
               
                 Login(),
               ], ),
                           ],
      ),
    );     
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage()));
         },
         
        child: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text('Login',
          ),
        ),
        ),
     ),),);
  }
}

class Password extends StatelessWidget {
  const Password({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
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
              textInputAction: TextInputAction.done,
             
              obscureText: true,
              decoration: const InputDecoration(                           
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(
                    Icons.lock,
                    size: 17,
                  ),),
                border: InputBorder.none,
                labelText: 'Password'),   
                onSaved: (value){
                },                         
                // validator: (value) {  if (value!.isEmpty) {  return 'Bu alanı boş bıraktınız!'; }
                //    return null; },
               ),),
         ),),);
  }
}

class Email extends StatelessWidget {
  const Email({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Center(
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
             keyboardType: TextInputType.emailAddress,
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
               labelText: 'Email'),   
               onSaved: (value){
               },                  
               // validator: (value) {  if (value!.isEmpty) {  return 'Bu alanı boş bıraktınız!'; }
               //    return null; },
              ),  
                               ),
        ),              ),
    );
  }
}

class TitlePages extends StatelessWidget {
  const TitlePages({
    Key? key,
    required this.loginTitle
  }) : super(key: key);

  final String loginTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 170,
        left: 120
      ),
      child: Text(
        loginTitle,
         style: const TextStyle(
           color: Colors.black,
           fontSize: 30,
           fontWeight: FontWeight.normal,           
         ),),
    );
  }
}

