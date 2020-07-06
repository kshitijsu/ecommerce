import 'package:ecommerce/pages/home.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailImage;
  final productDetailCurrentPrice;
  final productDetailOldPrice;

  ProductDetails({
    this.productDetailName,
    this.productDetailImage,
    this.productDetailCurrentPrice,
    this.productDetailOldPrice,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          ),
          child: Text('Shop App'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailImage),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "₹${widget.productDetailOldPrice}",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "₹${widget.productDetailCurrentPrice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              // ---------------Sizes---------------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Sizes"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              // ---------------Colors---------------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Color"),
                          content: Text("Choose the color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Colors"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              // ---------------Quantity---------------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Quantity"),
                          content: Text("Choose the Quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.0,
                  child: Text('Buy Now'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Name',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.productDetailName),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Brand',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand"),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Material',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Cotton"),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Simialr Products',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            height: 500,
            child: SimilarProducts(),
          ),
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
        return SimilarSingleProduct(
          productName: productsList[index]['name'],
          productImage: productsList[index]['image'],
          productOldPrice: productsList[index]['oldPrice'],
          productCurrentPrice: productsList[index]['currentPrice'],
        );
      },
    );
  }
}

class SimilarSingleProduct extends StatelessWidget {
  final productName;
  final productImage;
  final productOldPrice;
  final productCurrentPrice;

  SimilarSingleProduct({
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
