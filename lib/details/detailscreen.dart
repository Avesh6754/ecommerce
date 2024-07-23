// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'dart:ui';

import 'package:ecommerce/component/global.dart';
import 'package:ecommerce/home/component/home_udf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/homepage.dart';
import 'component/detail_screen_udf.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
        child: Column(
          children: [
            rowicon(context),
            detail_image(),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    row1(),
                    starudf(),
                    SizedBox(
                      height: 15,
                    ),
                    lineudf(),
                    SizedBox(
                      height: 15,
                    ),
                    Home_Text(
                        temp: 'Color Variant', number: 15, color: Colors.black),
                    SizedBox(
                      height: 15,
                    ),
                    color_option(),
                    SizedBox(
                      height: 30,
                    ),
                    lineudf(),
                    SizedBox(
                      height: 20,
                    ),
                    brandudf('Brand', productlist[selectedindex]['Brand']),
                    SizedBox(
                      height: 12,
                    ),
                    brandudf(
                        'Model Name', productlist[selectedindex]['Model Name']),
                    SizedBox(
                      height: 12,
                    ),
                    brandudf('Colour', productlist[selectedindex]['Color']),
                    SizedBox(
                      height: 12,
                    ),
                    brandudf('Style', productlist[selectedindex]['style']),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomappbar(context),
    );
  }




}
