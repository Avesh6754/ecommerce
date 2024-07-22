import 'package:ecommerce/component/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/homepage.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                const Spacer(),
                const Icon(Icons.shopping_bag_outlined),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.favorite_border)
              ],
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage('${productlist[selectedindex]['image']}')
                )),
              ),
            ),
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
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${productlist[selectedindex]['name']}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${productlist[selectedindex]['price']}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 30,
                            width: 90,
                            child: Image(
                                image: AssetImage(
                                    'assets/image/2-removebg-preview.png'))),
                        Text(
                          'Available in stock',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    lineudf(),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Color Variant',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...List.generate(colorlist.length,
                            (index) => colorudf(colorlist[index]))
                      ],
                    ),
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
                    brandudf('Model Name', productlist[selectedindex]['Model Name']),
                    SizedBox(
                      height: 12,
                    ),
                    brandudf('Colour',productlist[selectedindex]['Color']),
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
      bottomNavigationBar: GestureDetector(
        onTap: ()
        {
          Cartlist.add(productlist[selectedindex]);
          Navigator.of(context).pushNamed('/Cart');
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: BottomAppBar(
            height: 50,
            color: Colors.red,
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Add to Card ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1),
                )),
          ),
        ),
      ),
    );
  }

  Row brandudf(String name, String subname) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$name :',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          '$subname',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ],
    );
  }

  Container colorudf(Color color) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 30,
      width: 30,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
