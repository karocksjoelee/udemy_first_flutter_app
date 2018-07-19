import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductMangner extends StatefulWidget {
  final String startingProduct;
  ProductMangner(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManangerState();
  }
}

class _ProductManangerState extends State<ProductMangner> {
  List<String> _products = [];

  void _addProduct(product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
      Products(_products)
    ]);
  }
}
