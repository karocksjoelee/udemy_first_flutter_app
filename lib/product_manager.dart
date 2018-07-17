import 'package:flutter/material.dart';

import './products.dart';

class ProductMangner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManangerState();
  }
}

class _ProductManangerState extends State<ProductMangner> {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
                print(_products);
              });
            },
          )),
      Products(_products)
    ]);
  }
}