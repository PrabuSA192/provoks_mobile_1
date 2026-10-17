import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prabu Setyo Akhmad',
      theme: ThemeData(
        // Menggunakan warna biru sebagai warna favorit sementara. 
        // Silakan ubah Colors.blue dengan warna favoritmu (misal: Colors.red, Colors.green).
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Prabu Setyo Akhmad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'halo saya Prabu Setyo Akhmad',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 24), // Memberikan jarak antara teks dan tombol
            ElevatedButton(
              onPressed: () {
                // Menampilkan snackbar ketika tombol dipencet
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Hai selamat belajar flutter '),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('sapa saya'),
            ),
          ],
        ),
      ),
    );
  }
}