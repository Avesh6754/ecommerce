import 'package:ecommerce/Addtocart/cartscreen.dart';
import 'package:ecommerce/checkoutscreen/checkout.dart';
import 'package:ecommerce/details/detailscreen.dart';
import 'package:ecommerce/home/homepage.dart';
import 'package:ecommerce/splashscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // initialRoute: '/detail',
      routes: {
        '/':(context)=>const Splashscreen(),
        '/home':(context)=>const Homepage(),
        '/detail':(context)=>const Detailscreen(),
        '/Cart':(context)=>const Cartscreen(),
        '/Check':(context)=>const Checkout(),
      },
    );
  }
}
