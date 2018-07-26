import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductMangner extends StatefulWidget {
  
  final String startingProduct;
  ProductMangner({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManangerState();
  }
}

class _ProductManangerState extends State<ProductMangner> {
  List<String> _products = [];
  int _counter = 0;

  void _addProduct(product) {
    setState(() {
      _counter ++;
      _products.add('$product $_counter');
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct)
      ),
      Expanded(
        child: Products(_products)
      )
    ]);
  }
}
