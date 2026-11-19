import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row and Column Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.amber, shape: BoxShape.circle),
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.purple, shape: BoxShape.circle),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.yellowAccent, shape: BoxShape.circle),
            ),
            SizedBox(height: 20),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent, shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}