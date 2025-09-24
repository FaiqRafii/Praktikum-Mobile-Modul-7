import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Ini Halaman Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda. Contohnya, ada layar produk, dan ketika pengguna mengklik produk, akan muncul layar dengan detail produk tersebut',
                style: TextStyle(color: Colors.white),
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(30),
                child: Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://cdn-icons-png.freepik.com/512/8395/8395475.png",
                    scale: 3,
                  ),
                ),
              ),
              Text(
                'Pertana, kita perlu membuat dua halaman atau "route" yang ingin kita tampilkan. Selanjutnya, kita gunakan perintah Navigator.push() untuk berpindah dari halaman pertama ke halaman kedua. Ini seperti kita membuka halaman baru. Terakhir, kita bisa kembali dari halaman kedua ke halaman pertama menggunakan Navigator.pop(). Seperti menutup halaman kedua dan kembali ke halaman pertama',
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/tujuan');
                },
                child: Text('Ke halaman tujuan >'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
