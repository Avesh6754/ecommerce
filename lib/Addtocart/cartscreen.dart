import 'package:ecommerce/home/component/home_udf.dart';
import 'package:ecommerce/home/homepage.dart';
import 'package:flutter/material.dart';

import '../component/global.dart';
import 'component/add_to_cart_udf.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
              Spacer(),
             Home_Text(temp: 'Shopping Cart', number: 18, color: Colors.black),
              Spacer(),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        lineudf(),
        SizedBox(
          height: 2,
        ),
        Column(
          children: [
            ...List.generate(
                Cartlist.length,
                    (index) => Cartudf(
                  Cartlist[index]['name'],
                  Cartlist[index]['price'],
                  Cartlist[index]['image'],
                  index,
                )),
          ],
        )
      ])),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/Check');
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.red),
          alignment: Alignment.center,
          child: Text(
            'Checkout',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
                fontSize: 15),
          ),
        ),
      ),
    );
  }



  Widget Cartudf(String name, int price, String img, int index) {
    return Stack(
      children: [
        Container(
          height: 200,
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey, width: 0.2)),
          // alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 30,
                    width: 90,
                    child: Image(
                        image:
                        AssetImage('assets/image/2-removebg-preview.png'))),
                Text(
                  '    ${name}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${price}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 199,
          margin: EdgeInsets.fromLTRB(16, 15, 15, 0),
          width: 149,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
              color: Colors.grey.shade100,
              image: DecorationImage(
                image: AssetImage('$img'),
              )),
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Cartlist.removeAt(index);
                });
              },
              child: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
