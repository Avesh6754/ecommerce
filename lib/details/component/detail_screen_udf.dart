import 'package:flutter/material.dart';

import '../../component/global.dart';
import '../../home/component/home_udf.dart';
import '../../home/homepage.dart';

Container colorudf(Color color) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    height: 30,
    width: 30,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}

Row brandudf(String name, String subname) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        '$name :',
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      Text(
        '$subname',
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    ],
  );
}

Text detail_text_udf(
    {required List productlist,
    required int selectedindex,
    required String key,
    required Color color}) {
  return Text(
    (key == 'price')
        ? '\$ ${productlist[selectedindex]['$key']}/-'
        : "${productlist[selectedindex]['$key']}",
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: color),
  );
}

Expanded detail_image() {
  return Expanded(
    child: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${productlist[selectedindex]['image']}'))),
    ),
  );
}

Row color_option() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      ...List.generate(colorlist.length, (index) => colorudf(colorlist[index]))
    ],
  );
}

GestureDetector bottomappbar(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Cartlist.add(productlist[selectedindex]);
      Navigator.of(context).pushNamed('/Cart');
    },
    child: const Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
  );
}

Row rowicon(BuildContext context) {
  return Row(
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
  );
}

Row starudf() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
          height: 30,
          width: 90,
          child:
              Image(image: AssetImage('assets/image/2-removebg-preview.png'))),
      Text(
        'Available in stock ',
        style: TextStyle(fontSize: 10, color: Colors.green),
      )
    ],
  );
}

Row row1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      detail_text_udf(
          productlist: productlist,
          selectedindex: selectedindex,
          key: 'name',
          color: Colors.black),
      detail_text_udf(
          productlist: productlist,
          selectedindex: selectedindex,
          key: 'price',
          color: Colors.red),
    ],
  );
}
