import 'package:flutter/material.dart';
import 'package:untitled3/Screens/sign%20up.dart';
import 'Screens/Login.dart';
import 'Screens/forget.dart';
import 'Screens/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:splash(),
routes: {'signup':(context)=>const signup(),
    'Login':(context)=>const Login(),'splash':(context)=>const splash(),'forgot':(context)=>const forgot()}
    );
}

  }