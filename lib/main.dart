import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  counter--;
                });
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            Text('Nilai Counter : $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

// ANALISIS TERHADAP SETSTATE
// Pada kode CounterPage di atas, setState() dipanggil di dalam event onTap pada kedua InkWell
// setelah nilai variabel 'counter' diubah (counter-- atau counter++). Pemanggilan setState()
// memberi sinyal kepada Flutter framework bahwa terjadi perubahan data pada _CounterPageState,
// sehingga Flutter mengeksekusi ulang method build() untuk merender ulang widget Text dengan
// nilai 'counter' terbaru. Tanpa setState(), nilai variabel tetap berubah di memori tetapi
// tampilan di layar tidak akan diperbarui.

// APA KEGUNAAN
// 1. Menyinkronkan perubahan data (state) dengan tampilan antarmuka pengguna (UI) secara reaktif.
// 2. Memicu proses rebuild secara lokal hanya pada widget di dalam kelas State terkait agar performa tetap efisien.
// 3. Mengelola interaktivitas komponen UI sederhana secara langsung menggunakan mekanisme bawaan Flutter.