import 'package:flutter/material.dart';

class Take_photo extends StatefulWidget {
  static const String screenRoute = 'takephoto';
  const Take_photo({Key? key}) : super(key: key);

  @override
  State<Take_photo> createState() => _Take_photoState();
}

class _Take_photoState extends State<Take_photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0XFFE6E0DD),
      body:
      Column(
        children: [ Container(
            margin: EdgeInsets.only(top: 90)),
          Image.asset('images/camera-icon-symbol-sign-isolate-on-white-background-illustration-eps-10-free-vector-removebg-preview.png' ,width: 350,height: 350),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: ElevatedButton( onPressed: (){},child:Text("Retake the Photo"),
                  style: ElevatedButton.styleFrom(primary:Colors.black,fixedSize: Size(140, 50)) ) ),
              Center(child: ElevatedButton( onPressed: (){},child:Text("Upload"),
                  style: ElevatedButton.styleFrom(primary:Colors.black,fixedSize: Size(140, 50))))
            ],
          )
        ],
      ),
    );
  }
}
