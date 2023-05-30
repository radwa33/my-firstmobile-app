import 'package:flutter/material.dart';
import 'package:untitled3/Screens/comp_screen.dart';
import 'package:untitled3/Screens/tools_screen.dart';

import 'books.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0XFFE6E0DD),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color:  Color(0XFFB49389),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: Colors.white,
                          labelColor: Colors.black,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              icon: Image.asset('images/bookicon-removebg-preview.png'),
                            ),
                            Tab(
                              icon: Image.asset('images/comicon-removebg-preview (1).png'),
                            ),
                            Tab(
                              icon: Image.asset('images/tools-removebg-preview.png'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Book_Screen(),
                      Components_Screeb(),
                      ToolsScreen()




                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}