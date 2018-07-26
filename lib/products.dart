import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _productItemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(
            products[index],
            textDirection: TextDirection.ltr,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _productItemBuilder,
            itemCount: products.length,
          )
        : Center(
            child: Text(
              'No products found , please add some .',
              textDirection: TextDirection.ltr,
            ),
          );
  }
}
