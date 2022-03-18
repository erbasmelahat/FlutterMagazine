import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magazine/pages/login.dart';
// import 'package:magazine_app/pages/home.dart';
// import 'package:magazine_app/pages/home.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = 'Magazine';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black)
        ),
      ),
      home: const LoginPage(),
    );
  }
}


