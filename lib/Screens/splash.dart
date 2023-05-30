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


      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [

          Center(
            child: Container(
              height: double.infinity,
              width:double.infinity,
              child: Image.asset(
                'images/splash.jpg',
                fit: BoxFit.values[0],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 24,top: 20,start: 20,end: 20),
            child: MaterialButton(
              onPressed: ()
              {
                openLogin();
              },
              shape:RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(18),
              ),
              color: Color(0xffb49383),
              child: Text(
                'GET STARTED',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.8,
                    fontWeight: FontWeight.w700
                ),
              ),
              minWidth: double.infinity,
              height: 50,

            ),
          ),
        ],
      ),
    );
  }

}

/*

Scaffold(

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

              ]),]))))
 */