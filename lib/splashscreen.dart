import 'dart:async';

import 'package:ecommerce/home/homepage.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void iniState()
  {
    super.initState();
    Timer(Duration(seconds:2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage('assets/image/7931789-removebg-preview.png'),
                )
              ),
            )
          ],
        ),
      )
    );
  }
}
