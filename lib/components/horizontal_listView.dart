import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
              imageLocation: 'images/categories/icons8-clothes-96.png',
              imageCaption: 'T-shirts'),
          Category(
              imageLocation: 'images/categories/dresses.png',
              imageCaption: 'Dresses'),
          Category(
              imageLocation: 'images/categories/icons8-mens-hoodie-96.png',
              imageCaption: 'Hoodies'),
          Category(
              imageLocation: 'images/categories/icons8-shorts-96.png',
              imageCaption: 'Shorts'),
          Category(
              imageLocation: 'images/categories/icons8-military-uniform-96.png',
              imageCaption: 'Uniforms'),
          Category(
              imageLocation: 'images/categories/icons8-womens-shirt-96.png',
              imageCaption: 'Womens Shirts'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category(
      {super.key, required this.imageLocation, required this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            height: 200.0,
            width: 100.0,
            child: ListTile(
                title: Image.asset(
                  imageLocation,
                  height: 80.0,
                  width: 100.0,
                ),
                subtitle: Container(
                    alignment: Alignment.topCenter, child: Text(imageCaption))),
          )),
    );
  }
}
