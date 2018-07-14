import 'package:flutter/material.dart';

main() {
  // runApp(:expects Widget)
  runApp(MyApp());
}

// Classes are used to create objects - they serve as blueprint for objects.
class MyApp extends StatelessWidget {
  // Flutter will always call the widget's build function
  build(context) {
    // when using () means create / construct an object
    // MaterialApp is a wrapper for our entire app
    return MaterialApp(
      // Scaffold creates a new page for the App with nice white background.
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
      ),
    );
  }
}
