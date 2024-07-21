import 'package:flutter/material.dart';

import '../component/global.dart';
class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 45, 15, 0),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios_new_outlined),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Checkout ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          lineudf(),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.grey,width: 0.2)),
                // alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 90),
                          height: 30,
                          width: 90,
                          child: Image(
                              image: AssetImage(
                                  'assets/image/2-removebg-preview.png'))),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          'Smart Watch ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Text(
                          '\$120.0',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                      SizedBox(height: 50,),
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
                            SizedBox(width: 10,),
                            Text('1',style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.add,color: Colors.white,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 197,
                margin: EdgeInsets.fromLTRB(16, 2, 15, 0),
                width: 149,
                decoration: BoxDecoration(color: Colors.grey.shade100),
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: BottomAppBar(
          height: 50,
          color: Colors.red,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'Checkout ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              )),
        ),
      ),
    );
  }
}
