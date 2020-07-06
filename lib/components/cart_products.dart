import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnCart = [
    {
      "name": "Blazer",
      "image": 'images/blazer1.jpeg',
      "currentPrice": 100,
      "size": "L",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "image": 'images/dress1.jpeg',
      "currentPrice": 100,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnCart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cartProductName: productsOnCart[index]["name"],
          cartProductImage: productsOnCart[index]["image"],
          cartProductPrice: productsOnCart[index]["currentPrice"],
          cartProductSize: productsOnCart[index]["size"],
          cartProductColor: productsOnCart[index]["color"],
          cartProductQty: productsOnCart[index]["quantity"],
        );
      },
    );
  }
}

class SingleCartProduct extends StatefulWidget {
  final cartProductName;
  final cartProductImage;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQty;

  SingleCartProduct({
    this.cartProductName,
    this.cartProductImage,
    this.cartProductPrice,
    this.cartProductSize,
    this.cartProductColor,
    this.cartProductQty,
  });

  @override
  _SingleCartProductState createState() => _SingleCartProductState();
}

class _SingleCartProductState extends State<SingleCartProduct> {
  int productQty;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        // height: 200.0,
        child: ListTile(
          leading: Image.asset(
            widget.cartProductImage,
            width: 100.0,
            height: 100.0,
          ),
          title: Text(widget.cartProductName),
          subtitle: Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Sizes:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      widget.cartProductSize,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text("Color:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      widget.cartProductColor,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.add), onPressed: () {}),
                  Text(widget.cartProductQty.toString()),
                  IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                ],
              ),
            ],
          ),
          trailing: Text(
            "₹${widget.cartProductPrice}",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
