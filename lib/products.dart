import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(
            products[index],
          )
        ],
      ),
    );
  }

  Widget _buildProuductList() {
    if (products.length > 0) {
      return ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length
      );
    } else {
      return Center(
        child: Text(
          'No products found , please add some .',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildProuductList();
  }
}
