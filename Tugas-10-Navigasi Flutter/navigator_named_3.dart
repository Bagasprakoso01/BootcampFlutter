class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman sebelumnya (HomeScreen)
            Navigator.pop(context);
          },
          child: Text('Go back to Home'),
        ),
      ),
    );
  }
}