import 'package:flutter/material.dart';

import '../widget/my_button.dart';
import 'my_items.dart';

class PersonInfo extends StatefulWidget {

  static const String screenRoute = 'users';

  const PersonInfo({Key? key}) : super(key: key);

  @override
  _PersonInfoState createState() => _PersonInfoState();
}

class _PersonInfoState extends State<PersonInfo> {
  Widget _buildSingleContainer(String startText,String endText){

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      child: Container(
        height: 50 ,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration (
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              startText, style: TextStyle ( fontSize: 17, color: Colors.black45 ),
            ),
            Text(
              endText, style: TextStyle ( fontSize: 17, fontWeight: FontWeight.bold ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE6E0DD),
      appBar: AppBar(
        backgroundColor: Color(0XFFB49389),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Your Account'),
            SizedBox(width: 10),
            Container(
                child:
                Image.asset ("images/logo2.png") ,
                width: 150
            ),
          ],
        ),
      ),
      body: Container(

        height: double.infinity ,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add code to change the user's photo here
                    },
                    child: Stack(
                      children: [
                        CircleAvatar(
                          maxRadius: 65,
                          backgroundImage: AssetImage("images/olavia.jpg"),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.edit,
                              size: 20,
                              color: Color(0XFFB49389),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSingleContainer(
                        "Name","Yassin Hamza"
                    ),
                    _buildSingleContainer(
                        "Email","YassinandHamza@toysRus.com"
                    ),
                    _buildSingleContainer(
                        "phone Number","+201320555555"
                    ),
                    _buildSingleContainer(
                        "password","********"
                    ),
                  ],
                ),
              ),

            ),
            Column(
              children: [
                Container(
                  width: 200,
                  child: MyButton(
                    color: Color(0XFFB49389),
                    title: 'Edit my info',
                    onPressed: () {
                    },
                  ),
                ),
                Container(
                  width: 200,
                  child: MyButton(
                    color: Color(0XFFB49389),
                    title: 'My items',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return CheckoutPage();
                      }));
                    },
                  ),
                ),
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}
