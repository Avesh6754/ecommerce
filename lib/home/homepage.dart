import 'package:ecommerce/component/global.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                ),
                const Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Swip',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  TextSpan(
                      text: 'wide',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ])),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
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
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 82),
                    child: Icon(
                      Icons.grid_view_sharp,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Shop By Category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                    Iconslist.length,
                    (index) => Iconbox(
                        name: Iconslist[index]['name'],
                        id: Iconslist[index]['icon']))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Newest Arrival',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Wrap(
              children: [
                ...List.generate(
                    productlist.length,
                    (index) => GestureDetector(onTap: (){

                      Navigator.of(context).pushNamed('/detail');
                      selectedindex=productlist[index];

                    },
                      child: productbox(
                          Name: productlist[index]['name'],
                          price: productlist[index]['price'],
                          imag: productlist[index]['image']),
                    ))
              ],
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            border: Border.all(width: 0.5, color: Colors.grey.shade300)),child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                ...List.generate(Iconsbottomlist.length,(index)=>iconbottom(Iconsbottomlist[index]))
                    ],),
            ),
      ),
    );
  }


}

int selectedindex=0;