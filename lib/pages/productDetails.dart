import "package:flutter/material.dart";
import "package:vils_clothing/main.dart";

class PageDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailNewPrice;
  final prodcutDetailOldPrice;
  final productDetailPicture;

  const PageDetails(
      {super.key,
      required this.productDetailsName,
      this.productDetailNewPrice,
      this.prodcutDetailOldPrice,
      this.productDetailPicture});

  @override
  State<PageDetails> createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal,
        title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('VILS CLOTHING')),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.productDetailsName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "\$${widget.prodcutDetailOldPrice}",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "\$ ${widget.productDetailNewPrice}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                                fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                child: Container(
                    color: Colors.white,
                    child: Image.asset(widget.productDetailPicture))),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            backgroundColor: Colors.teal.shade50,
                            actions: [
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  color: Colors.teal.shade400,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                  child: Text("Close"))
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(children: const [
                    Expanded(child: Text("Size")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ]),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose a color"),
                            backgroundColor: Colors.teal.shade50,
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                color: Colors.teal.shade400,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(children: const [
                    Expanded(child: Text("Color")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ]),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            backgroundColor: Colors.teal.shade50,
                            content: Text("Choose a quantity"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                color: Colors.teal.shade400,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(children: const [
                    Expanded(child: Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ]),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.teal,
                    textColor: Colors.white,
                    elevation: 0.1,
                    child: Text("Buy now")),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.teal,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.teal,
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which"),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(widget.productDetailsName),
              )
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("brand x"),
              )
            ],
          ),
          Row(
            children: const [
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Text(
                    "Product condition",
                    style: TextStyle(color: Colors.grey),
                  )),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("condition x"),
              )
            ],
          ),
          Divider(),
          Text("Simmilar products"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 360,
              child: SimmilarProducts(),
            ),
          )
        ],
      ),
    );
  }
}

class SimmilarProducts extends StatefulWidget {
  const SimmilarProducts({super.key});

  @override
  State<SimmilarProducts> createState() => _SimmilarProductsState();
}

class _SimmilarProductsState extends State<SimmilarProducts> {
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

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: producList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) {
          return SimmilarSingleProduct(
              productName: producList[index]['name'],
              productPicture: producList[index]['picture'],
              productOldPrice: producList[index]['oldPrice'],
              productPrice: producList[index]['price']);
        }));
  }
}

class SimmilarSingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  const SimmilarSingleProduct(
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
