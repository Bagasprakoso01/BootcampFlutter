import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items =
      List<String>.generate(100, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView.count Example')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(items.length, (index) {
            return Card(
              child: Center(
                child: Text(items[index]),
              ),
            );
          }),
        ),
      ),
    );
  }
}