import 'package:ecommerce/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productsList = [
    {
      "name": "Blazer",
      "image": 'images/blazer1.jpeg',
      "oldPrice": 120,
      "currentPrice": 100,
    },
    {
      "name": "Red Dress",
      "image": 'images/dress1.jpeg',
      "oldPrice": 120,
      "currentPrice": 100,
    },
    {
      "name": "Heels",
      "image": 'images/hills1.jpeg',
      "oldPrice": 400,
      "currentPrice": 350,
    },
    {
      "name": "Black Dress",
      "image": 'images/dress2.jpeg',
      "oldPrice": 220,
      "currentPrice": 180,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productsList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return SingleProduct(
          productName: productsList[index]['name'],
          productImage: productsList[index]['image'],
          productOldPrice: productsList[index]['oldPrice'],
          productCurrentPrice: productsList[index]['currentPrice'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productImage;
  final productOldPrice;
  final productCurrentPrice;

  SingleProduct({
    this.productName,
    this.productImage,
    this.productOldPrice,
    this.productCurrentPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    productDetailName: productName,
                    productDetailImage: productImage,
                    productDetailCurrentPrice: productCurrentPrice,
                    productDetailOldPrice: productOldPrice,
                  ),
                ),
              ),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      productName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "₹$productCurrentPrice",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text(
                      "₹$productOldPrice",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
                child: Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
