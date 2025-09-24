import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Ini Halaman Tujuan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. Route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform yang digunakan',
                style: TextStyle(color: Colors.white),
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(30),
                child: Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/780/780305.png",
                    scale: 3,
                  ),
                ),
              ),
              Text(
                'Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). Metode pop() akan menghapus Route awal ini dari tumpukan Route yang dikelola oleh Navigator.',
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('< Kembali ke home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
