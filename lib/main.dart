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
      initialRoute: '/home',
      routes: {
        '/':(context)=>const Splashscreen(),
        '/home':(context)=>const Homepage(),
      },
    );
  }
}
