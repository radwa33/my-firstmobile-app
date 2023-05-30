import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final user= FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [const Text('hello,your\,’re signed in'),
          Text(user.email!),
    MaterialButton(onPressed: (){
      FirebaseAuth.instance.signOut();

    },
      color: Color(0xffb49383),
      child: Text('sign out'),
    )
        ],
      )

    ));
  }
}
