import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled3/Screens/users.dart';
import 'package:untitled3/Screens/signup.dart';
import 'Screens/Login.dart';
import 'Screens/Tab_bar.dart';
import 'Screens/forget.dart';
import 'Screens/splash.dart';
import 'Screens/Tab_bar.dart';
import 'Screens/chats_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'home2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark
      ),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home:splash(),
          routes: {'signup':(context)=>const signup(),
            'Login':(context)=>const Login(),'splash':(context)=>const splash(),'forgot':(context)=>const forgot() , 'chatscreen':(context)=>const ChatUsers() ,
            'chats': (context)=> ChatScreen(),'Navagation_Screen': (context)=> const Navagation_Screen()}

      ),
    );
  }

}

