
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {




void opensignup(){
  Navigator.of(context).pushReplacementNamed('signup');
}
void openforgot(){
  Navigator.of(context).pushReplacementNamed('forgot');
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
                    child: Text( 'Sign in',  style: GoogleFonts.robotoCondensed(fontSize:18, fontWeight: FontWeight.bold),

                      ),
                    ),
                  ),
                ),
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap:openforgot ,
                    child: Text('Forgot your password?',style:GoogleFonts.robotoCondensed(fontSize:18))
                ),]),

              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('Not a member yet?',style:GoogleFonts.robotoCondensed(fontSize:18),
                  ),
               GestureDetector(
                 onTap:opensignup ,
                   child: Text('Sign up now',style:GoogleFonts.robotoCondensed(fontSize:18, fontWeight: FontWeight.bold))
               )

              ])


        ]
          ),
        )),
      );
  }
}
