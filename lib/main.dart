import 'package:flutter/material.dart';

import './product_manager.dart';
import 'package:flutter/rendering.dart';

// ** Shorter version using fat arrow, if have only 1 line of code.
// void main() => runApp(MyApp());
void main() {
  // runApp(:expects Widget)
  // Already split codes to modules
  runApp(MyApp());
  // Enable Debuggin UserInterface
  // debugPaintSizeEnabled = true;
}

class MyAppStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// Classes are used to create objects - they serve as blueprint for objects.
class MyApp extends StatelessWidget {
  // Flutter will always call the widget's build function
  @override
  build(BuildContext context) {
    // when using () means create / construct an object
    // MaterialApp is a wrapper for our entire app
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.amberAccent
      ),
      // Scaffold creates a new page for the App with nice white background.
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductMangner('First Product'),
      ),
    );
  }
}


// * Doesn't split codes :
// ---------------------------------------
// ! _clasName Stands for private class ( Dart actually respect it )
// Wrapping build() as a State
class _MyAppState extends State<MyAppStateful> {
  List<String> _products = ['Food Tester', 'Food Rester'];
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        // * Column : A widget that displays its children in a vertical array.
        body: Column(children: <Widget>[
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
            ),
          ),
          Column(
            children: _products
                .map((ele) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/food.jpg'),
                          Text(ele)
                        ],
                      ),
                    ))
                .toList(),
          )
        ]),
      ),
    );
  }
}




