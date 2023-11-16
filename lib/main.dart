// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_nullsafety/carousel_nullsafety.dart';

//own imports
import 'package:vils_clothing/components/horizontal_listView.dart';
import 'package:vils_clothing/components/Products.dart';
import 'package:vils_clothing/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget Image_carousal = Container(
      height: 300.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset('images/pexels-anna-nekrashevich-8532616.jpg'),
          Image.asset('images/pexels-brett-sayles-4520551.jpg'),
          Image.asset('images/pexels-tembela-bohle-1884581.jpg'),
          Image.asset('images/pexels-the-th-179909.jpg'),
          Image.asset('images/pexels-ylanite-koppens-934070.jpg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
        dotColor: Colors.teal,
        dotIncreasedColor: Colors.tealAccent,
        indicatorBgPadding: 4.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal,
        title: Text('VILS CLOTHING'),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('vinodhLahiru'),
              accountEmail: Text('vinodhlahiru2000@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                    // ignore: sort_child_properties_last
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.grey),
              ),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.teal,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image_carousal,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Catogories'),
          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
