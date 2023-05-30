import 'package:flutter/material.dart';
import 'package:untitled3/Screens/take_photo.dart';

class Add_Photo extends StatefulWidget {
  static const String screenRoute = 'addphoto';
  const Add_Photo({Key? key}) : super(key: key);

  @override
  State<Add_Photo> createState() => _Add_PhotoState();
}

class _Add_PhotoState extends State<Add_Photo> {

  bool? forsale =false;
  bool? forrent=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0XFFB49389),
          title:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
              [
                Container(
                    margin: EdgeInsets.only(right: 90),
                    child: Text('Add Item',style: TextStyle(fontSize: 25))),
                Image.asset("images/logo2.png",height: 120,width: 120),
              ])
      ),
      // ),
      body: SingleChildScrollView(
        child: Column (
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Image.asset('images/camera-icon-symbol-sign-isolate-on-white-background-illustration-eps-10-free-vector-removebg-preview.png'),
                          iconSize: 60,
                          onPressed: () {},
                        ),
                        Center(child: ElevatedButton( onPressed: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => const Take_photo()));
                        }
                        ,child:Text("Take a Photo"),
                            style: ElevatedButton.styleFrom(primary:Colors.black)))
                      ]),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Image.asset('images/yalahwiii-removebg-preview.png'),
                          iconSize: 60,
                          onPressed: () {},
                        ),
                        Center(child: ElevatedButton(onPressed: (){},child:Text("Upload a Photo"),
                            style: ElevatedButton.styleFrom(primary:Colors.black)))
                      ]) ,
                ]),
            Container(
              margin:  EdgeInsets.only(top: 45),
            ),
            const Divider(
              color:Colors.black ,
              indent: 20,
              endIndent: 20,
              thickness: 3,
            ),
            Container(
              margin:  EdgeInsets.only(top: 10,left: 50,right: 50 ),
            ),
            TextFormField(
              maxLength: 50,
              decoration: InputDecoration(hintText:"Add Describtion And Some Usage Tips!",
                hintStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                )
                ,filled: true,
                fillColor: const Color(0XFFB49389),
                contentPadding: const EdgeInsets.symmetric(vertical: 90,horizontal: 30,),
                border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0XFFD5B093),
                    )
                ),
              ),
            ),

            Row(
                children: [const Padding(padding: EdgeInsets.all(20)),
                  Checkbox(value: forsale , onChanged: (val){
                    setState(() {
                      forsale =val;
                    });
                  }),
                  const Text("For Sale"),
                  const Padding(padding: EdgeInsets.only(left: 5,right: 100)),
                  Checkbox(value: forrent , onChanged: (val2){
                    setState(() {
                      forrent =val2;
                    })    ;
                  }),
                  const Text("For Rent"),
                ]),
            Container(
              margin: EdgeInsets.only(right: 220),
              child: SizedBox(height: 50,
                  width: 150,
                  child:TextFormField(
                    decoration:
                    InputDecoration(
                        hintText:"Enter price",
                        hintStyle: TextStyle(
                            fontSize: 13)
                        ,filled: true,
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0XFFD5B093),),
                        )
                    ),
                  )
              ) ,
            ),
            Container(
              margin: EdgeInsets.only(left: 200 ,bottom: 30),
              child: Center(child:
              ElevatedButton( onPressed: (){},child:Text("DONE"),
                  style: ElevatedButton.styleFrom(primary:Colors.green,fixedSize: Size(100, 40)))),
            )
          ],

        ),
      ),
    );
  }
}
