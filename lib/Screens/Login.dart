
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import'package:untitled3/main.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}



class _LoginState extends State<Login> {


  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim()
        , password: _passwordController.text.trim());
    Navigator.of(context).pushNamed('Navagation_Screen');
  }

  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }


  void opensignup(){
    Navigator.of(context).pushReplacementNamed('signup');
  }
  void openforgot(){
    Navigator.of(context).pushReplacementNamed('forgot');
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xffe6e0dd),
    appBar: AppBar(
    backgroundColor: Color(0XFFB49389),
    title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    Text('LOGIN',style: TextStyle(
        color: Colors.white,
        fontSize: 16.8,
        fontWeight: FontWeight.w700
    ),),
    SizedBox(width: 10),
    Container(
    child:
    Image.asset ("images/logo2.png") ,
    width: 200
    ),],),),
      body:SafeArea(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  /*
                  Image.asset('images/logo2.png',
                    width: 800,
                  ),

                 */
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(color:Color(0xffffffff),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:TextField(
                          controller: _emailController,
                          obscureText: true,
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
                      decoration: BoxDecoration(color:Color(0xffffffff),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:TextField(
                          controller: _passwordController,
                          obscureText: true,
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
                      child: GestureDetector(
                        onTap: signin,
                    child: Container(

                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Color(0xffb49383),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Text( 'log in',  style: GoogleFonts.robotoCondensed(fontSize:18, fontWeight: FontWeight.bold,color: Colors.white),

                        )),
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
