import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chats_screen.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({Key? key}) : super(key: key);

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0XFFE6E0DD),

        body: ListView(
            children: [Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [



                  Padding(padding: EdgeInsets.all(10) ,
                    child: Container(

                      color: Color(0XFFE6E0DD),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(child: Image.asset('images/ruler.jpg'),
                            width: 50,

                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child:
                              Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                              )
                              ) ,
                              SizedBox(height: 9,),
                              Container(child:
                              Text('helpful for bigginers'
                              )
                              ) ,

                              Container(
                                child: Row(
                                  children: [

                                    Icon(Icons.message , size: 13,),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                            return ChatScreen();
                                          }));

                                        },
                                        child: Text(' contact the seller' , style: TextStyle(fontSize: 15 , color: Colors.black),)),
                                  ],
                                ),
                              )

                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite),
                              Text("5  LE " , style: GoogleFonts.robotoCondensed(fontSize:10, fontWeight: FontWeight.w600),)
                            ],
                          )
                        ],
                      ),
                    ),

                  ),
                  Padding(padding: EdgeInsets.all(10) ,
                    child: Container(

                      color: Color(0XFFE6E0DD),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(child: Image.asset('images/a5.jpg'),
                            width: 50,

                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child:
                              Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                              )
                              ) ,
                              SizedBox(height: 9,),
                              Container(child:
                              Text('helpful for bigginers'
                              )
                              ) ,

                              Container(
                                child: Row(
                                  children: [

                                    Icon(Icons.message , size: 13,),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                            return ChatScreen();
                                          }));

                                        },
                                        child: Text(' contact the seller' , style: TextStyle(fontSize: 15 , color: Colors.black),)),
                                  ],
                                ),
                              )

                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite),
                              Text("5  LE " , style: GoogleFonts.robotoCondensed(fontSize:10, fontWeight: FontWeight.w600),)
                            ],
                          )
                        ],
                      ),
                    ),

                  ),
                  Padding(padding: EdgeInsets.all(10) ,
                    child: Container(

                      color: Color(0XFFE6E0DD),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(child: Image.asset('images/images.jpg'),
                            width: 50,

                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child:
                              Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                              )
                              ) ,
                              SizedBox(height: 9,),
                              Container(child:
                              Text('helpful for bigginers'
                              )
                              ) ,

                              Container(
                                child: Row(
                                  children: [

                                    Icon(Icons.message , size: 13,),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                            return ChatScreen();
                                          }));

                                        },
                                        child: Text(' contact the seller' , style: TextStyle(fontSize: 15 , color: Colors.black),)),
                                  ],
                                ),
                              )

                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite),
                              Text("5  LE " , style: GoogleFonts.robotoCondensed(fontSize:10, fontWeight: FontWeight.w600),)
                            ],
                          )
                        ],
                      ),
                    ),

                  ),
                  Padding(padding: EdgeInsets.all(10) ,
                    child: Container(

                      color: Color(0XFFE6E0DD),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(child: Image.asset('images/A6.jpg'),
                            width: 50,

                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child:
                              Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                              )
                              ) ,
                              SizedBox(height: 9,),
                              Container(child:
                              Text('helpful for bigginers'
                              )
                              ) ,

                              Container(
                                child: Row(
                                  children: [

                                    Icon(Icons.message , size: 13,),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                            return ChatScreen();
                                          }));

                                        },
                                        child: Text(' contact the seller' , style: TextStyle(fontSize: 15 , color: Colors.black),)),
                                  ],
                                ),
                              )

                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite),
                              Text("5  LE " , style: GoogleFonts.robotoCondensed(fontSize:10, fontWeight: FontWeight.w600),)
                            ],
                          )
                        ],
                      ),
                    ),

                  ),
                  Padding(padding: EdgeInsets.all(10) ,
                    child: Container(

                      color: Color(0XFFE6E0DD),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(child: Image.asset('images/A7.jpg'),
                            width: 50,

                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child:
                              Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                              )
                              ) ,
                              SizedBox(height: 9,),
                              Container(child:
                              Text('helpful for bigginers'
                              )
                              ) ,

                              Container(
                                child: Row(
                                  children: [

                                    Icon(Icons.message , size: 13,),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                            return ChatScreen();
                                          }));

                                        },
                                        child: Text(' contact the seller' , style: TextStyle(fontSize: 15 , color: Colors.black),)),
                                  ],
                                ),
                              )

                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite),
                              Text("5  LE " , style: GoogleFonts.robotoCondensed(fontSize:10, fontWeight: FontWeight.w600),)
                            ],
                          )
                        ],
                      ),
                    ),

                  ),




                ],
              ),
            ),
            ]
        )
    );;
  }
}
