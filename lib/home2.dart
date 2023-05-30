import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Screens/Tab_bar.dart';

import 'Screens/add_photo.dart';
import 'Screens/favoriate.dart';
import 'Screens/home_screen.dart';
import 'Screens/my_account.dart';
import 'Screens/users.dart';

class Navagation_Screen extends StatefulWidget {
  const Navagation_Screen({Key? key}) : super(key: key);

  @override
  State<Navagation_Screen> createState() => _Navagation_ScreenState();
}

class _Navagation_ScreenState extends State<Navagation_Screen> {
  int selected_index = 0;


  List <Widget> widgetpages = <Widget>[
    Home_Screen(),
    ChatUsers(),
    Add_Photo(),
    favoriate(),
    PersonInfo(),
    TabBarPage()


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        onTap: change_item,
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.messenger),
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.favorite),
          TabItem(icon: Icons.person),
          TabItem(icon: Icons.category),
        ],
        backgroundColor: Color(0XFFB49389),
        initialActiveIndex: selected_index,
      ),
      body: widgetpages.elementAt(selected_index),

    );
  }

  void change_item(int index) {
    setState(() {
      selected_index = index;
    });
  }
}
