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
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Homepage()));
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
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  'assets/image/abstract-modern-ecommerce-logo-ecommerce-logo-design-shop-logo-design-template-creative-ecommerce-logo-vector-removebg-preview.png'),
            )),
          )
        ],
      ),
    ));
  }
}
