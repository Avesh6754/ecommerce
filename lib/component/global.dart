import 'package:flutter/material.dart';
List Cartlist=[];
List productlist=[
  {
    'name':'Blue Star Ac',
    "Brand":'Blue Star',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/a1-removebg-preview.png',
    'price':26000,
  },
  {
    'name':'Godrej Ac',
    "Brand":'Godrej',
    "Color":"Ligth Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/a2-removebg-preview.png',
    'price':30000,
  },
  {
    'name':'Hitachi Ac',
    "Brand":'Hitachi',
    "Color":"Blue Air",
    "style":"Classic",
    "Model Name":"Color Fit Pluse 3",
    'image':'assets/image/a3-removebg-preview.png',
    'price':25000,
  },
  {
    'name':'Dell Pc',
    "Brand":'Dell',
    "Color":"Ligth Black",
    "style":"Modern",
    "Model Name":"Ultra Fit Pluse",
    'image':'assets/image/c1-removebg-preview.png',
    'price':50000,

  },
  {
    'name':'Boat Earphone',
    "Brand":'Boat',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Ultra",
    'image':'assets/image/e1-removebg-preview.png',
    'price':5500,
  },
  {
    'name':'Lenovo Laptop',
    "Brand":'Lenove',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/l1-removebg-preview.png',
    'price':120000,

  },
  {
    'name':'Apple Watch',
    "Brand":'Apple',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/p1-removebg-preview.png',
    'price':18000,
  },
  {
    'name':'Godrej Tv',
    "Brand":'Godrej',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/t1-removebg-preview.png',
    'price':50000,
  },

  {
    'name':'Lenovo Pc',
    "Brand":'Lenovo Star',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/c2-removebg-preview.png',
    'price':80000,
    'description':""
  },
  {
    'name':'Noise Earphone',
    "Brand":'Noise',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/e2-removebg-preview.png',
    'price':4000,
    'description':""
  },
  {
    'name':'Asus Laptop',
    "Brand":'Asus',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/l2-removebg-preview.png',
    'price':40000,
    'description':""
  },
  {
    'name':'Redmi 10',
    "Brand":'Mi',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/p2-removebg-preview.png',
    'price':18000,
    'description':""
  },

  {
    'name':'Vivobook',
    "Brand":'HP',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/l3-removebg-preview.png',
    'price':72000,
    'description':""
  },
  {
    'name':'iPhone X',
    "Brand":'Apple',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/p3-removebg-preview.png',
    'price':185000,
    'description':""

  },

  {
    'name':'Vivo 21',
    "Brand":"Vivo",
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/p4-removebg-preview.png',
    'price':22000,
    'description':""
  },
  {
    'name':'Lenovo Pc',
    "Brand":'Lenovo Star',
    "Color":"White Air",
    "style":"Modern",
    "Model Name":"Color Fit Pluse",
    'image':'assets/image/c2-removebg-preview.png',
    'price':80000,
    'description':""
  },
];

List Iconslist=[
  {
   "icon": Icons.laptop_chromebook,
    'name':"Laptop",
  },
  {
    "icon": Icons.wc,
    'name':"Clothes",
  },
  {
    "icon": Icons.shopping_bag_rounded,
    'name':"Bag",
  },
  {
    "icon": Icons.do_not_step_rounded,
    'name':"Shoes",
  }
];

List Iconsbottomlist=[
  Icons.home_filled,
  Icons.favorite_border,
  Icons.shopping_bag_outlined,
  Icons.account_circle_outlined
];

Color color=Colors.white;
int seleceted=0;

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

Stack productbox(
    {required var Name, required var price, required String imag}) {
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
            Container(height: 30,
                width: 90,
                child: Image(image: AssetImage(
                    'assets/image/2-removebg-preview.png'))),
            Text("$Name", style: TextStyle(fontSize: 17,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.bold),),
            Text("\$${price.toInt()}/-", style: TextStyle(fontSize: 17,
                color: Colors.red,
                fontWeight: FontWeight.bold),),
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
List colorlist=[
  Color(0xff3A6037),
  Color(0xffCDBD68),
  Color(0xff3B250E),
  Color(0xff69ABCE),
  Color(0xffC0C0C0),
];

Container lineudf() {
  return Container(
    height: 1,
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.grey.shade300),
  );
}
Icon iconbottom(var index) => Icon(index,color: Colors.grey.shade400,size: 30,);



