import 'package:ecommerce/details/component/detail_screen_udf.dart';
import 'package:flutter/material.dart';

import '../../component/global.dart';
import '../homepage.dart';

Widget productbox(
    {required var Name, required var price, required String imag}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(5, 15, 10, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 165,
          width: 155,
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('$imag'),
            ),
          ),
        ),
        // starudf(),
        Container(
            height: 30,
            width: 90,
            child: Image(
                image: AssetImage('assets/image/2-removebg-preview.png'))),
        Text(
          "$Name",
          style: const TextStyle(
              fontSize: 17,
              color: Colors.black,
              height: 1.5,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "\$${price.toInt()}/-",
          style: const TextStyle(
              fontSize: 17, color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Text Home_Text(
    {required String temp, required double number, required Color color}) {
  return Text(
    ' $temp',
    style:
        TextStyle(fontSize: number, fontWeight: FontWeight.bold, color: color),
  );
}

Wrap buildWrap(BuildContext context) {
  return Wrap(
    children: [
      ...List.generate(
          productlist.length,
          (index) => GestureDetector(
                onTap: () {
                  selectedindex = index;
                  Navigator.of(context).pushNamed('/detail');
                },
                child: productbox(
                    Name: productlist[index]['name'],
                    price: productlist[index]['price'],
                    imag: productlist[index]['image']),
              ))
    ],
  );
}

Row Category() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ...List.generate(
          Iconslist.length,
          (index) => Iconbox(
              name: Iconslist[index]['name'], id: Iconslist[index]['icon']))
    ],
  );
}

Container Bottom() {
  return Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        border: Border.all(width: 1, color: Colors.grey.shade300)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...List.generate(
          Iconsbottomlist.length,
          (index) => iconbottom(
            Iconsbottomlist[index],
          ),
        ),
      ],
    ),
  );
}

TextSpan centerLogo({required String temp, required Color color}) {
  return TextSpan(
      text: '$temp',
      style:
          TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: color));
}

Container search_bar() {
  return Container(
    height: 45,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(30)),
    child: const Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.search,
          color: Colors.grey,
          size: 30,
        ),
        Text(
          '''Search "Smart Phone"''',
          style: TextStyle(color: Colors.grey),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.grid_view_sharp,
            color: Colors.red,
          ),
        )
      ],
    ),
  );
}
