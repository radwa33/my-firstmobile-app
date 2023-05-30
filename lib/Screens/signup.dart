import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  Future signup() async {
    if (passwordConfirmed()) {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim()
        , password: _passwordController.text.trim());
    Navigator.of(context).pushNamed('Login');
  }
}
bool passwordConfirmed(){
    if(_passwordController.text.trim()==_confirmpasswordController.text.trim()){
      return true;
    }
    else{
      return false;
    }
}
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
  }

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xffe6e0dd),
        appBar: AppBar(
          backgroundColor: Color(0XFFB49389),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('SIGN UP',style: TextStyle(
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


    SizedBox(height: 15),
    Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
    decoration: BoxDecoration(color: Color(0xffffffff),
    borderRadius: BorderRadius.circular(12)
    ),
    /*
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child:TextField(
      controller: _phoneController,
      obscureText: true,
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
              decoration: BoxDecoration(color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(12)
              ),*/
           child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:TextField(
                  controller: _emailController,
                 // obscureText: true,
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
              decoration: BoxDecoration(color:  Color(0xffffffff),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:TextField(
                  controller: _passwordController,
                  //obscureText: true,
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
              decoration: BoxDecoration(color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:TextField(
                  controller: _confirmpasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:'confirm password',
                  ),
                ),
              ),
            ),
          ),
    SizedBox(height: 15),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
    child: GestureDetector(
      onTap: signup,

    child: Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(color: Color(0xffb49383),
    borderRadius: BorderRadius.circular(12)
    ),
    child: Center(
    child: Text( 'Sign up',  style: GoogleFonts.robotoCondensed(fontSize:18, fontWeight: FontWeight.bold,color:Colors.white),

    ),
    ),
    ),
    ))]))));
  }
}
