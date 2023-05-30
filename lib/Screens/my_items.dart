import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<Item> cartItems = [
    Item(name: "Arduino UNO",
        description: "Used Arduino UNO Rev.3 board is a microcontroller board based on the ATmega328 (data sheet). It has 14 digital input/output pins,  a 16 MHz crystal oscillator, a USB connection, a power jack, an ICSP header, and a reset button.", price: 200),
    Item(name: "T-Square Ruler", description: "80 cm Rotring T ruler, used with its cover.", price: 100),
    Item(name: "Robot Car", description: "Simple Robotic Car control by Bluetooth.", price: 600),
    Item(name: "Salma Hany", description: "للبيع فقط لرميها من فوق برج عالي (يوجد خصم للجاديين)", price: 0.25),
    Item(name: "Intro to Algorithm", description: "Used Algorithms book,Easy way to start learning Algorithms, written By :Thomas H Cormen, Charles E Leiserson, Ronald L Rivest, Clifford Stein · 2001", price: 50),
    Item(name: "AVR Kit", description: "Eta32mini is a low-cost ATMEL AVR development kit based on ATMEGA32 microcontroller and provides the basic interface circuits to microcontroller, suitable for undergraduate laboratories and beginners.", price: 400)

  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0XFFB49389),
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Container(margin: EdgeInsets.only(right: 70),
                      child: Text('Your Items', style: TextStyle(fontSize: 20))),
                  Image.asset("images/logo2.png", height: 120, width: 120)])
        ),
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
                              Row(children: [ Text("Delete"),
                                IconButton(
                                  icon: Icon(Icons.remove_circle_outline),
                                  onPressed: () {
                                    setState(() {
                                      cartItems.removeAt(index);
                                    });
                                  },
                                ),
                                Text("Edit"),
                                IconButton(
                                  icon: Icon(Icons.edit),
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
                ),
              ],
            )
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String description;
  final double price;
  Item({required this.name, required this.description, required this.price});
}