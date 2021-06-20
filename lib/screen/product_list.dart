import 'package:flutter/material.dart';
import 'package:shopyoulike/widgets/quntity_control.dart';

class ProductList extends StatefulWidget {
  final List list;
  ProductList(this.list);

  @override
  _ProductListState createState() => new _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List productList = [];
  @override
  void initState() {
    productList = widget.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200, width: 1),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(widget.list[index]["url"].toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      widget.list[index]["name"].toString(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text.rich(TextSpan(children: [
                      TextSpan(text: "MRP  ₹ "),
                      TextSpan(
                        text: widget.list[index]["mrp"].toString(),
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ])),
                    Text.rich(TextSpan(children: [
                      TextSpan(text: "Price  ₹ "),
                      TextSpan(
                        text: widget.list[index]["price"].toString(),
                      ),
                    ])),
                    QuantityControl(
                      productList[index]["quantity"],
                      (value) => setState(
                          () => productList[index]["quantity"] = value),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
