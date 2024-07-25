import 'package:flutter/material.dart';

import '../../component/global.dart';


double total(List Cartlist) {
  dynamic sum = 0;
  for (int i = 0; i < Cartlist.length; i++) {
    sum = sum + Cartlist[i]['price'];
  }
  sum += (sum * 18) / 100;

  return sum;

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
