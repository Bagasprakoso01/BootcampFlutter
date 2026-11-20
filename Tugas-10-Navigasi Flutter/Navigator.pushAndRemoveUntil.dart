import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator.pushAndRemoveUntil Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman detail dan menghapus semua halaman di atasnya
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
              (route) => false,
            );
          },
          child: Text('Go to Detail Page and remove all screens above'),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman sebelumnya, ketika kembali maka halaman black screen, karena tidak ada lagi tumpukan
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}