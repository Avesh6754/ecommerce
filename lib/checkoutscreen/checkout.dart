import 'package:flutter/material.dart';
import 'package:ecommerce/Addtocart/cartscreen.dart';

import '../component/global.dart';
import 'component/checkout_udf.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: Icon(Icons.arrow_back_ios_new_outlined)),
                  Spacer(),
                  Text(
                    'Checkout ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
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
                        ))
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: checkoutamount(context),
    );
  }
}
