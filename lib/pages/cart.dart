import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal,
        title: Text('Shopping Cart'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text("Total: "),
              subtitle: Text("\$100"),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              color: Colors.teal,
              child: Text(
                "Check out",
                style: TextStyle(color: Colors.white),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
