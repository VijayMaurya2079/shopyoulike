import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopyoulike/screen/tabs/cart.dart';
import 'package:shopyoulike/screen/tabs/category.dart';
import 'package:shopyoulike/screen/tabs/home.dart';
import 'package:shopyoulike/screen/tabs/wallet.dart';
import 'package:shopyoulike/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop You Like"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset("assets/logo.png"),
              accountName: Text("Shop You Like"),
              accountEmail: Text("info@shopyoulike.in"),
            ),
            ListTile(leading: Icon(Icons.lock), title: Text("Login")),
            ListTile(
                leading: Icon(Icons.shopping_cart), title: Text("My Cart")),
            ListTile(leading: Icon(Icons.list), title: Text("My Orders")),
            ListTile(leading: Icon(Icons.call), title: Text("Contact Us")),
            ListTile(leading: Icon(Icons.share), title: Text("Share this app")),
            ListTile(
                leading: Icon(Icons.notes),
                title: Text("Terms and Conditions")),
            ListTile(leading: Icon(Icons.star), title: Text("Rate Us")),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TabBarView(
                controller: _controller,
                children: [
                  Home(),
                  Category(),
                  Cart(),
                  Wallet(),
                ],
              ),
            ),
          ),
          TabBar(
            controller: _controller,
            labelColor: appPrimaryColor.shade900,
            unselectedLabelColor: Colors.grey.shade400,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            onTap: (index) {},
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "Categories",
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
                text: "Cart",
              ),
              Tab(
                icon: Icon(Icons.account_balance_wallet),
                text: "My Wallet",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
