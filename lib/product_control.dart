import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProduct;
  ProductControl(this.addProduct);


  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return RaisedButton(
            color: Theme.of(context).accentColor,
            child: Text('Add Product'),
            onPressed: () {
              print('TEST');
              addProduct('Added Product');
              // setState(() {
              //   _products.add('Added Product');
              //   print(_products);
              // });
            },
          );
    }
}