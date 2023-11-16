// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:vils_clothing/pages/productDetails.dart';

// ignore: must_be_immutable
class Products extends StatelessWidget {
  var producList = [
    {
      "name": "Patrol T-shirt",
      "picture": 'images/Screenshot 2023-06-28 at 09.45.46.png',
      "oldPrice": 150,
      "price": 100,
    },
    {
      "name": "Coffee T-shirt",
      "picture": 'images/categories/coffee_loverst.jpg',
      "oldPrice": 150,
      "price": 100,
    },
    {
      "name": "Drifting T-shirt",
      "picture": 'images/categories/car_drift.jpg',
      "oldPrice": 150,
      "price": 100,
    },
    {
      "name": "Gamer  T-shirt",
      "picture": 'images/categories/GamerT.jpeg',
      "oldPrice": 150,
      "price": 100,
    },
  ];

  Products({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: producList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) {
          return SingleProduct(
              productName: producList[index]['name'],
              productPicture: producList[index]['picture'],
              productOldPrice: producList[index]['oldPrice'],
              productPrice: producList[index]['price']);
        }));
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  const SingleProduct(
      {super.key,
      required this.productName,
      required this.productPicture,
      required this.productOldPrice,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: productName,
            child: Material(
                child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PageDetails(
                          productDetailsName: productName,
                          prodcutDetailOldPrice: productOldPrice,
                          productDetailNewPrice: productPrice,
                          productDetailPicture: productPicture,
                        )));
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white30,
                    child: ListTile(
                      leading: Text(
                        productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$productPrice",
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        "\$$productOldPrice",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    productPicture,
                    fit: BoxFit.cover,
                  )),
            ))));
  }
}
