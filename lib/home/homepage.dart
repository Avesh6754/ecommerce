



import 'package:ecommerce/component/global.dart';
import 'package:flutter/cupertino.dart';
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
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                size: 30,
              ),
              Text.rich(TextSpan(children: [
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
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
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
                  padding: const EdgeInsets.only(left: 82),
                  child: Icon(
                    Icons.grid_view_sharp,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Shop By Category',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(Iconslist.length, (index)=>Iconbox(name: Iconslist[index]['name'],id: Iconslist[index]['icon']))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Newest Arrival',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Wrap(children: [
            ...List.generate(productlist.length, (index)=>productbox(Name: productlist[index]['name'],price: productlist[index]['price'],imag: productlist[index]['image']
            ))
          ],)
                ]),
              ),
        ));
  }

  Stack productbox({required var Name,required var price,required String imag}) {
    return Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
              height: 250,
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start
                ,
                children: [
                  Container(height: 30,width:90,child: Image(image: AssetImage('assets/image/2-removebg-preview.png'))),
                  Text("$Name",style: TextStyle(fontSize: 17,color: Colors.black,height: 1.5,fontWeight: FontWeight.bold),),
                  Text("\$${price.toInt()}/-",style: TextStyle(fontSize: 17,color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
              height: 165,
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                image: DecorationImage(
                  image: AssetImage('$imag'),
                )
              ),
            ),
          ],

        );
  }

  Column Iconbox({required var name,required dynamic id}) {
    return Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: Icon(id,color:Colors.red,size:30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$name',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          );
  }
}
