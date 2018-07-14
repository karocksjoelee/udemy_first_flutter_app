import 'package:flutter/material.dart';

// ** Shorter version using fat arrow, if have only 1 line of code.
// void main() => runApp(MyApp());

void main() {
  // runApp(:expects Widget)
  runApp(MyApp());
}



// Classes are used to create objects - they serve as blueprint for objects.
class MyApp extends StatelessWidget {
  // Flutter will always call the widget's build function
  @override
  build(BuildContext context) {
    // when using () means create / construct an object
    // MaterialApp is a wrapper for our entire app
    return MaterialApp(
      // Scaffold creates a new page for the App with nice white background.
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/food.jpg'),
              Text('Food Paradise')
            ],
          ),
        ),
      ),
    );
  }
}
