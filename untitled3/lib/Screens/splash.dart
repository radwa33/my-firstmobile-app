import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void openLogin(){
    Navigator.of(context).pushReplacementNamed('Login');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.brown[100],
        body:SafeArea(
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Image.asset('images/splash.jpg',
      width: 600
    ),
          SizedBox(height: 15),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                GestureDetector(
                    onTap:openLogin ,
                 child: Text('Start',style:GoogleFonts.robotoCondensed(fontSize:33, fontWeight: FontWeight.bold,backgroundColor: Colors.brown[500]))

                )

              ]),]))));
  }

}
