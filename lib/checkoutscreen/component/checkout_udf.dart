import 'package:flutter/material.dart';

import '../../component/global.dart';

Widget Cartudf(String name, double price, String img, int index) {
  return StatefulBuilder(
    builder: (context, setState) => Stack(
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
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
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
    ),
  );
}

double total(List Cartlist) {
  dynamic sum = 0, amount = 0;
  for (int i = 0; i < Cartlist.length; i++) {
    sum = sum + Cartlist[i]['price'];
  }
  sum += (sum * 18) / 100;
  amount = amount + sum;

  return amount;
}

GestureDetector checkoutamount(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed('/home');
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: BottomAppBar(
        height: 50,
        color: Colors.red,
        child: Align(
            alignment: Alignment.center,
            child: Text(
              'Total Amount : ${total(Cartlist)}/-',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1),
            )),
      ),
    ),
  );
}
