import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Icon Widget Example')),
        body: Center(
          child: Icon(
            Icons.thumb_up,
            size: 50,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}