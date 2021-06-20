import 'package:flutter/material.dart';
import 'package:shopyoulike/screen/product_list.dart';
import 'package:shopyoulike/widgets/slider.dart';

final List productList = [
  {
    "name": "Radius 1 Bundle",
    "url": "assets/product/1.jpg",
    "mrp": "40",
    "price": "38",
    "quantity": 0,
  },
  {
    "name": "Kiwi fruit pack of 3",
    "url": "assets/product/2.jpg",
    "mrp": "40",
    "price": "38",
    "quantity": 0,
  },
  {
    "name": "Capsicum 250 gm",
    "url": "assets/product/3.jpg",
    "mrp": "40",
    "price": "38",
    "quantity": 0,
  },
  {
    "name": "Beetroot 250 gm",
    "url": "assets/product/4.jpg",
    "mrp": "40",
    "price": "38",
    "quantity": 0,
  },
  {
    "name": "Carrot 250 gm",
    "url": "assets/product/5.jpg",
    "mrp": "40",
    "price": "38",
    "quantity": 0,
  },
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        SizedBox(height: 8),
        HomeScreenSlider(
          Axis.horizontal,
          ["assets/13.jpg", "assets/14.jpg"],
          Duration(seconds: 4),
        ),
        CategoryList(),
        SizedBox(height: 8),
        HomeScreenSlider(
          Axis.horizontal,
          ["assets/11.jpg", "assets/12.jpg"],
          Duration(seconds: 5),
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey.shade200,
          child: Text(
            "Your Delivery Schedule will be on tomorrow 8am - 5pm !!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.amber.shade900,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8),
        ProductList(productList),
      ],
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => new _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final list = [
    {"name": "Vegetable", "url": "assets/11.jpg"},
    {"name": "Fruits", "url": "assets/12.jpg"},
    {"name": "Combo Offers", "url": "assets/13.jpg"},
    {"name": "Grocery", "url": "assets/14.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...list.map(
            (e) => Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage(e["url"].toString()),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(e["name"].toString())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
