import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/tshirt.png',
            imageCaption: 'Shirt',
          ),
          Category(
            imageLocation: 'images/jeans.png',
            imageCaption: 'Jeans',
          ),
          Category(
            imageLocation: 'images/shoe.png',
            imageCaption: 'Shoe',
          ),
          Category(
            imageLocation: 'images/informal.png',
            imageCaption: 'Informal',
          ),
          Category(
            imageLocation: 'images/dress.png',
            imageCaption: 'Dress',
          ),
          Category(
            imageLocation: 'images/formal.png',
            imageCaption: 'Formal',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 90.0,
          child: ListTile(
            title: Image.asset(imageLocation),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption),
            ),
          ),
        ),
      ),
    );
  }
}
