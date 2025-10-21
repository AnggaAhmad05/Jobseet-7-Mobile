Nama: Angga Ahmad Romansa

Kelas: SIB-3F

NIM: 2341760014


UTS Pemrograman Mobile

Instruksi Awal (SETUP)

1. Pastikan proyek ocr_sederhana sudah diinisialisasi sebagai repositori Git dan terhubung ke akun GitHub Anda.

2. Lakukan commit awal untuk memastikan branch main Anda bersih.

<img width="674" height="238" alt="image" src="https://github.com/user-attachments/assets/8b1ff0fb-c681-40a4-92be-dd28ad89fcac" />


Soal 1: Modifikasi Struktur Navigasi dan Aliran 


1. Pengubahan Navigasi Home

   
• Ubah ElevatedButton di HomeScreen (lib/screens/home_screen.dart) menjadi *widget* **ListTile**.
• Atur ListTile: leading: Icon(Icons.camera_alt, color: Colors.blue);
title: Text(’Mulai Pindai Teks Baru’).
• Fungsi onTap harus menggunakan Navigator.push() untuk ke ScanScreen.

sebelum

<img width="576" height="271" alt="image" src="https://github.com/user-attachments/assets/98d88ba6-55d3-4eb3-9671-83408f5aca75" />


sesudah Modifikasi

   <img width="626" height="298" alt="image" src="https://github.com/user-attachments/assets/974f63fc-0664-4aba-b982-3b71a0d28f17" />


2. Teks Utuh dan Navigasi Balik

• Di ResultScreen (lib/screens/result_screen.dart), hapus fungsi ocrText.replaceAll(
agar hasil teks ditampilkan dengan baris baru (\n) yang utuh.
• Tambahkan FloatingActionButton dengan ikon Icons.home.
• Ketika tombol ditekan, navigasi harus kembali langsung ke HomeScreen menggunakan **Navigator.pushAndRemoveUntil()** (atau metode yang setara)
untuk menghapus semua halaman di atasnya dari stack navigasi.

<img width="422" height="175" alt="image" src="https://github.com/user-attachments/assets/08e438bb-3f0d-49d7-9317-142797399539" />


<img width="551" height="341" alt="image" src="https://github.com/user-attachments/assets/2a3f056a-7f10-4c30-9c8c-2979a8f668ff" />


<img width="589" height="260" alt="image" src="https://github.com/user-attachments/assets/b8c3ba1f-b492-40de-a715-a258df858ed3" />


Muncul icon camera di Home page

![WhatsApp Image 2025-10-21 at 13 46 01_d4fdc0a9](https://github.com/user-attachments/assets/382ba124-818d-4b61-a61e-6ad31c1b34fe)



Setelah melakukan scan terdapat icone home, yang ketika di klik akan kembali ke halaman home


![WhatsApp Image 2025-10-21 at 13 51 02_f9f49578](https://github.com/user-attachments/assets/287c30b3-1d03-4177-997c-08e825eed144)


<img width="688" height="173" alt="image" src="https://github.com/user-attachments/assets/d0281817-5165-4d1d-a2c5-de9d91931793" />


Soal 2: Penyesuaian Tampilan dan Penanganan State/Error

Tujuan: Memperbaiki tampilan *loading* dan memberikan *feedback* error yang lebih
jelas.
1. Custom Loading Screen di ScanScreen (20 Poin):
• Di ScanScreen (lib/screens/scan_screen.dart), modifikasi tampilan *loading* yang muncul sebelum kamera siap (if (!controller.value.isInitialized)) :
• Latar Belakang: Scaffold(backgroundColor: Colors.grey[900]).
• Isi: Di dalam Center, tampilkan Column berisi CircularProgressIndicator(colo
Colors.yellow).
• Di bawah indikator, tambahkan Text(’Memuat Kamera... Harap tunggu.’,
style: TextStyle(color: Colors.white, fontSize: 18)).

<img width="652" height="356" alt="image" src="https://github.com/user-attachments/assets/484a185f-a778-442b-a2d9-e04a29cf44c5" />



![WhatsApp Image 2025-10-21 at 14 05 48_ef53295d](https://github.com/user-attachments/assets/0a7f3f54-7792-4ddf-a7f0-893e0bfeeccf)



2. Spesifikasi Pesan Error (20 Poin):
• Di fungsi _takePicture() pada ScanScreen, modifikasi blok catch (e) untuk mengubah pesan *error* pada SnackBar.
• Pesan SnackBar harus berbunyi: "Pemindaian Gagal! Periksa Izin Kamera atau coba lagi." (Hilangkan variabel *error* ($e)).

Modifikasi pada blok catch e untuk pesan error

<img width="655" height="230" alt="image" src="https://github.com/user-attachments/assets/61be7a4a-cb89-43c7-9fc1-8e5ce8f8bcb7" />


<img width="245" height="541" alt="image" src="https://github.com/user-attachments/assets/e90e1635-fda2-42fe-8a9e-317107deeb0d" />



Soal 3: Implementasi Plugin Text-to-Speech
Tujuan: Mengintegrasikan fitur membaca teks secara lisan menggunakan *plugin* flutter_tts.
1. Instalasi Plugin :
• Tambahkan *plugin* flutter_tts ke dalam file pubspec.yaml (gunakan versi
terbaru yang kompatibel).

<img width="503" height="219" alt="image" src="https://github.com/user-attachments/assets/3ad54e8e-387a-4cce-8fca-8ca64f0cf848" />


Jalankan flutter pub get.

<img width="593" height="240" alt="image" src="https://github.com/user-attachments/assets/209b9e8d-1332-41c1-bb04-8714509da494" />




2. Konversi Widget dan Inisialisasi:
• Ubah ResultScreen dari StatelessWidget menjadi **StatefulWidget**.

<img width="560" height="298" alt="image" src="https://github.com/user-attachments/assets/3ddf2deb-5c09-4fe8-8f10-cb53b9789dfc" />


• Di initState(), inisialisasi FlutterTts dan atur bahasa pembacaan menjadi
Bahasa Indonesia.


<img width="527" height="254" alt="image" src="https://github.com/user-attachments/assets/a358ce0e-ff25-4c02-8800-f52eb7bb608c" />




• Implementasikan dispose() untuk menghentikan mesin TTS saat halaman
ditutup.

<img width="374" height="105" alt="image" src="https://github.com/user-attachments/assets/a90d09f6-4fd8-41a6-b7ef-e2ed34487a3c" />



<img width="519" height="323" alt="image" src="https://github.com/user-attachments/assets/4918f7c0-6523-4373-a18c-9245e1226a9a" />



3. Fungsionalitas Pembacaan:
   
• Tambahkan FloatingActionButton kedua di ResultScreen (atau ganti AppBar
dengan action button) dengan ikon Icons.volume_up.
• Ketika tombol ditekan, panggil fungsi speak() pada FlutterTts untuk membacakan seluruh isi ocrText

<img width="554" height="249" alt="image" src="https://github.com/user-attachments/assets/3a7b0dd2-22ad-4bff-a15a-27feae314206" />


Muncul icin volume



![WhatsApp Image 2025-10-21 at 15 45 55_d037370c](https://github.com/user-attachments/assets/2f6cf25a-25ec-48dc-bccc-c4a8b605683a)




Saat icon volume di klik akan memunculkan suara membaca teks hasil scan 


[Tonton Video Demo](orc_\ord_sederhana\testing.mp4)



<img width="240" height="276" alt="image" src="https://github.com/user-attachments/assets/0059c122-c660-4117-9a9d-867383103177" />












