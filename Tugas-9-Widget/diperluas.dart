import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Expanded Example')),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.red,
                height: 100,
                child: Center(child: Text('Expanded 1')),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
                child: Center(child: Text('Expanded 2')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}