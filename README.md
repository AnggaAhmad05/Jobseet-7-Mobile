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






