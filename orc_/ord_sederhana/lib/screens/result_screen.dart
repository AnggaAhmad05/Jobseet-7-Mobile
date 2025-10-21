import 'dart:io';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class ResultScreen extends StatelessWidget {
  final String imagePath;
  final String recognizedText;

  const ResultScreen({
    super.key,
    required this.imagePath,
    required this.recognizedText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Scan'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tampilkan gambar yang di-scan
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(
                File(imagePath),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            
            // Judul hasil OCR
            const Text(
              'Hasil OCR:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),

            
          // Menampilkan teks OCR apa adanya (tanpa replaceAll)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                recognizedText.isEmpty
                    ? 'Tidak ada teks yang terdeteksi'
                    : recognizedText, // tampilkan teks utuh dengan baris baru
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 80), 
          ],
        ),
      ),

     
      floatingActionButton: FloatingActionButton(
        tooltip: 'Kembali ke Home',
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false, // hapus semua halaman di atas stack
          );
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}