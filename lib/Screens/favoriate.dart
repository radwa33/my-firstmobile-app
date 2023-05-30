import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
class favoriate extends StatefulWidget {
  const favoriate({Key? key}) : super(key: key);

  @override
  State<favoriate> createState() => _favoriateState();
}

class _favoriateState extends State<favoriate> {

  List<Item> cartItems = [
    Item(name: "Arduino UNO",
        description: "Used Arduino UNO Rev.3 board is a microcontroller board based on the ATmega328 (data sheet). It has 14 digital input/output pins,  a 16 MHz crystal oscillator, a USB connection, a power jack, an ICSP header, and a reset button.", price: 200),
    Item(name: "T-Square Ruler", description: "80 cm Rotring T ruler, used with its cover.", price: 100),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e0dd),
        appBar: AppBar(
          backgroundColor: Color(0XFFB49389),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Favoriate',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.8,
                  fontWeight: FontWeight.w700
              ),),

              SizedBox(width: 15),
              Container(
                  child:
                  Image.asset ("images/logo2.png") ,
                  width: 150
              ),],),),
     /* bottomNavigationBar: CurvedNavigationBar(
        color: Color(0XFFB49389),
        backgroundColor:Color(0XFFFFFFFF),

        items: [
          Icon(Icons.person_3, size: 40),
          Icon(Icons.favorite, size: 40),
          Icon(Icons.add, size: 40),
          Icon(Icons.home, size: 40),
          Icon(Icons.chat, size: 40),
        ],

      ),*/
        body: Container(
            color: Colors.grey[100],
            child:Column(
              children: [

                Expanded( child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(

                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cartItems[index].name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(children: [
                                IconButton(
                                  icon: Icon(Icons.favorite),
                                  onPressed: () {
                                    setState(() {
                                      cartItems.removeAt(index);
                                    });
                                  },
                                ),
                              ],)
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            cartItems[index].description,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\L\E${cartItems[index].price}",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),

                    );
                  },
                ),

                )])));}
}
class Item {
  final String name;
  final String description;
  final double price;

  Item({required this.name, required this.description, required this.price});
}