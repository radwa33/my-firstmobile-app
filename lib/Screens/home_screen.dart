//import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/Screens/users.dart';

import 'add_photo.dart';
import 'favoriate.dart';
import 'my_account.dart';

class Home_Screen extends StatefulWidget {
  static const String screenRoute = 'addphoto';
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        backgroundColor: Color(0XFFE6E0DD),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0XFFB49389) ,
          title: Center(
            child: Column(
              children: [
                Container(
                  child: Image.asset("images/logo2.png"),
                  width: 150,
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                height: 40,

                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'what do you need?',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,

                    ),
                    filled: true,

                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
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
                  Container(child: Image.asset('images/cbook.jpg'),
                    width: 50,

                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(child:
                      Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                      )
                      ) ,
                      Container(child:
                      Text('helpful for bigginers'
                      )
                      ) ,
                      Container(
                        child: Row(
                          children: [

                            Icon(Icons.message , size: 13,),
                            Text(' contact the seller' , style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite),
                      Text("5 LE " , style: GoogleFonts.robotoCondensed(fontSize:5, fontWeight: FontWeight.w600),)
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
                Container(child: Image.asset('images/jabook.jpg'),
                  width: 50,

                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child:
                    Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                    )
                    ) ,
                    Container(child:
                    Text('helpful for bigginers'
                    )
                    ) ,
                    Container(
                      child: Row(
                        children: [

                          Icon(Icons.message , size: 13,),
                          Text('contact the seller' , style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.favorite),
                    Text("5 LE " , style: TextStyle(fontSize: 5),)
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
                Container(child: Image.asset('images/Arduino_Uno_-_R3.jpg'),
                  width: 50,

                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child:
                    Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                    )
                    ) ,
                    Container(child:
                    Text('helpful for bigginers'
                    )
                    ) ,
                    Container(
                      child: Row(
                        children: [

                          Icon(Icons.message , size: 13,),
                          Text('contact the seller' , style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.favorite),
                    Text("5 LE " , style: TextStyle(fontSize: 5),)
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
                Container(child: Image.asset('images/resistors.jpg'),
                  width: 50,

                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child:
                    Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                    )
                    ) ,
                    Container(child:
                    Text('helpful for bigginers'
                    )
                    ) ,
                    Container(
                      child: Row(
                        children: [

                          Icon(Icons.message , size: 13,),
                          Text('contact the seller' , style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.favorite),
                    Text("5 LE " , style: TextStyle(fontSize: 5),)
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
                Container(child: Image.asset('images/ruler.jpg'),
                  width: 50,

                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child:
                    Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                    )
                    ) ,
                    Container(child:
                    Text('helpful for bigginers'
                    )
                    ) ,
                    Container(
                      child: Row(
                        children: [

                          Icon(Icons.message , size: 13,),
                          Text('contact the seller' , style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.favorite),
                    Text("5 LE " , style: TextStyle(fontSize: 5),)
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
                Container(child: Image.asset('images/content.jpg'),
                  width: 50,

                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child:
                    Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                    )
                    ) ,
                    Container(child:
                    Text('helpful for bigginers'
                    )
                    ) ,
                    Container(
                      child: Row(
                        children: [

                          Icon(Icons.message , size: 13,),
                          Text('contact the seller' , style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.favorite),
                    Text("5 LE " , style: TextStyle(fontSize: 5),)
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
                Container(child: Image.asset('images/content.jpg'),
                  width: 50,

                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child:
                    Text('C programming book ' ,style:GoogleFonts.robotoCondensed(fontSize:15, fontWeight: FontWeight.w600),
                    )
                    ) ,
                    Container(child:
                    Text('helpful for bigginers'
                    )
                    ) ,
                    Container(
                      child: Row(
                        children: [

                          Icon(Icons.message , size: 13,),
                          Text('contact the seller' , style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.favorite),
                    Text("5 LE " , style: TextStyle(fontSize: 5),)
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
      ),
    );
  }


}
