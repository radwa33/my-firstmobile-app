//import 'package:chatto/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Screens/users.dart';

import '../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  static const String screenRoute = 'chat_screen';
  //final User user;
  //ChatScreen({ this.user}){};

 // const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE6E0DD),
      appBar: AppBar(
        backgroundColor: Color(0XFFB49389),
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            /*Image.asset('images/logo.png' , height: 25),
            SizedBox(width: 10),*/
            Text("user")

          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  ChatUsers()));
              // here we will put the logout function
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0XFFB49389),
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'send',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}