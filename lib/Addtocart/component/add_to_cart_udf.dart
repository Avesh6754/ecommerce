import 'package:flutter/material.dart';

import '../../component/global.dart';



GestureDetector bottomcard(BuildContext context) {
  return GestureDetector(
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
  );
}
