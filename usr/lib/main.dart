import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cara Menentukan Nilai CBR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CBRHomePage(),
      },
    );
  }
}

class CBRHomePage extends StatelessWidget {
  const CBRHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cara Menentukan Nilai CBR'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Apa itu CBR?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'California Bearing Ratio (CBR) adalah pengujian penetrasi yang digunakan untuk mengevaluasi kekuatan tanah subgrade dan lapisan dasar untuk konstruksi jalan. CBR mengukur kekuatan tanah relatif terhadap bahan standar (batu pecah standar).',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Langkah-langkah Menentukan Nilai CBR:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '1. **Persiapan Sampel**: Ambil sampel tanah dari lokasi yang akan diuji. Pastikan sampel mewakili kondisi lapangan.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '2. **Kompaksi Sampel**: Kompaksi sampel tanah dalam cetakan dengan ukuran standar (diameter 152 mm, tinggi 178 mm) menggunakan alat kompaksi.',
              style: TextStyle(fontSize: 16),
            ),n            const SizedBox(height: 10),
            const Text(
              '3. **Penetrasi**: Gunakan plunger silinder dengan diameter 50 mm. Lakukan penetrasi pada sampel dengan kecepatan 1,25 mm/menit.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '4. **Pengukuran Beban**: Catat beban yang diperlukan untuk penetrasi pada kedalaman 2,5 mm dan 5,0 mm.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '5. **Perhitungan CBR**:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'CBR = (Beban pada penetrasi 2,5 mm sampel / Beban pada penetrasi 2,5 mm bahan standar) × 100%',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const Text(
              'Bahan standar biasanya memiliki CBR 100%.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '6. **Interpretasi**: Nilai CBR yang lebih tinggi menunjukkan kekuatan tanah yang lebih baik. Untuk konstruksi jalan, nilai CBR minimal yang disyaratkan tergantung pada jenis jalan dan lalu lintas.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Catatan: Pengujian CBR harus dilakukan di laboratorium geoteknik yang terakreditasi untuk hasil yang akurat.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}