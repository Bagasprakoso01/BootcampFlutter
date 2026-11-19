import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Padding Example')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 30),
              child: Text(
                'Hello, Padding!',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              'Hello, Padding!',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}