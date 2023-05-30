import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.brown[100],
        body:SafeArea(
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('images/logo2.png',
        width: 800,
    ),
    Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(12)
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child:TextField(
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText:'Name',
    ),
    ),
    ),
    ),
    ),
    SizedBox(height: 15),
    Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(12)
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child:TextField(
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText:'Phone',
    ),
    ),
    ),
    ),
    ),
          SizedBox(height: 15),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:'Email',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:'Password',
                  ),
                ),
              ),
            ),
          ),
    SizedBox(height: 15),
    Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(color: Colors.brown[500],
    borderRadius: BorderRadius.circular(12)
    ),
    child: Center(
    child: Text( 'Sign up',  style: GoogleFonts.robotoCondensed(fontSize:18, fontWeight: FontWeight.bold),

    ),
    ),
    ),
    )]))));
  }
}
