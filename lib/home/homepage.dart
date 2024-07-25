// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:ecommerce/component/global.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'component/home_udf.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Text.rich(TextSpan(children: [
                      centerLogo(temp: 'Swip', color: Colors.red),
                      centerLogo(temp: 'wide', color: Colors.black),
                    ])),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 1),
                          shape: BoxShape.circle,
                          color: Colors.grey.shade100,
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/image/7931789-removebg-preview.png',
                              ),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                search_bar(),
                const SizedBox(
                  height: 30,
                ),
                Home_Text(
                    temp: 'Shop By Category', number: 18, color: Colors.black),
                const SizedBox(
                  height: 15,
                ),
                Category(),
                const SizedBox(
                  height: 30,
                ),
                Home_Text(
                    temp: 'Newest Arrival', number: 18, color: Colors.black),
                buildWrap(context),
              ]),
        ),
      ),
      bottomNavigationBar: Bottom(),
    );
  }
}

var selectedindex = 0;
