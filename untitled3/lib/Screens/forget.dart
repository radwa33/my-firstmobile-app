
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class forgot extends StatefulWidget {
const forgot({Key? key}) : super(key: key);

@override
State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
void opensplash(){
Navigator.of(context).pushReplacementNamed('splash');
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.brown[100],



      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo2.png',height: 200),
              TextFormField(

                style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'Phone',
                  icon: Icon(
                    Icons.phone,
                    color:Colors.brown[200],
                  ),
                  errorStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.brown),
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(

                style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'Verification code',
                  icon: Icon(
                    Icons.message,
                    color:Colors.brown[200],
                  ),
                  errorStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.brown),
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(

                style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'New password',
                  icon: Icon(
                    Icons.password,
                    color:Colors.brown[200],
                  ),
                  errorStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.brown),
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(

                style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'Confirm your new password',
                  icon: Icon(
                    Icons.password,
                    color:Colors.brown[200],
                  ),
                  errorStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.brown),
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                ),
              ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              GestureDetector(
                  onTap:opensplash,
                  child: Text('Done',style:GoogleFonts.robotoCondensed(fontSize:30, fontWeight: FontWeight.bold,color:Colors.brown[100],backgroundColor: Colors.brown[500]))
              )

            ],
          ),
        ]),
      )));

  }
}
