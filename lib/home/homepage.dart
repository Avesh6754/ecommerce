

import 'package:ecommerce/component/global.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Welcome,\n",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: "Our Fashion App ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey))
              ])),
            ),
            Wrap(
              children: [
                ...List.generate(productlist.length, (index)=>productmethod(image: productlist[index]['image'],name:productlist[index]['name'],price: productlist[index]['price'] ))
              ],
            )
          ],
        ),
      ),
    );
  }

  Stack productmethod({required String name , required var price,required var image}) {
    return Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 10, 0),
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),boxShadow: const [BoxShadow(
                    color: Colors.black12,spreadRadius:0.5,blurRadius: 8
                  )]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$name',
                              style: TextStyle(fontSize: 15),
                            ),
                            const Text(
                              '4.3',
                              style: TextStyle(fontSize:12),
                            )
                          ],
                        ),
                        Text(
                          '\$ $price/-',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 10, 0),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(image))),
                )
              ],
            );
  }
}
