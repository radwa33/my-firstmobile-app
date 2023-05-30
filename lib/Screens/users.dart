

import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../models/user_model.dart';
import 'chats_screen.dart';

class ChatUsers extends StatefulWidget {

  static const String screenRoute = 'users';

  const ChatUsers({Key? key}) : super(key: key);

  @override
  _ChatUsersState createState() => _ChatUsersState();
}

class _ChatUsersState extends State<ChatUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE6E0DD),
      appBar: AppBar(
        backgroundColor: Color(0XFFB49389),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Chats'),
            SizedBox(width: 10),
            Container(
                child:
                Image.asset ("images/logo2.png") ,
                width: 150
            ),
          ],
        ),
      ),
      body:

      Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration:BoxDecoration(
                color: Color(0XFFE6E0DD),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  itemCount: chats.length ,
                  itemBuilder:(BuildContext context,int index ){
                    final Message chat = chats[index];
                    final User user = chat.sender;
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) =>  ChatScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                        padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(radius: 35.0, backgroundImage:
                                AssetImage( chat.sender.imageUrl),
                                ),

                                SizedBox(width: 10.0 ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chat.sender.name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5.0 ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.45,
                                      child: Text(
                                        chat.text,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        overflow: TextOverflow.ellipsis,

                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(
                                chat.time,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              chat.unread?
                              Container(
                                width: 40.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                alignment: Alignment.center,
                                child:
                                Text( 'NEW',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ) : Text(''),


                            ],),
                          ],
                        ),
                      ),     );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}