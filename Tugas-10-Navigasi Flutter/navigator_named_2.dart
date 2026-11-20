class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman detail menggunakan Named Route
            Navigator.pushNamed(context, '/detail');
          },
          child: Text('Go to Detail Screen'),
        ),
      ),
    );
  }
}