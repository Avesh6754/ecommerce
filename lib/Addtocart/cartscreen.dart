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
                  child: const Icon(Icons.arrow_back_ios_new_outlined)),
              const Spacer(),
              Home_Text(temp: 'Shopping Cart', number: 18, color: Colors.black),
              const Spacer(),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        lineudf(),
        const SizedBox(
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
      bottomNavigationBar: bottomcard(context),
    );
  }
}
