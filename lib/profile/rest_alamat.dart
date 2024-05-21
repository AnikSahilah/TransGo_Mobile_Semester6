import 'package:flutter/material.dart';

class ResetAlamatPage extends StatelessWidget {
  const ResetAlamatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/latar_ubah.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    "assets/images/icon_reset_alamat.png",
                    height: 100,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ubah Alamat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 70),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password Baru',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Konfirmasi Password Baru',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 150),
                  Center(
                    child: InkWell(
                      onTap: () {
                        // Tambahkan logika untuk tombol Simpan di sini
                      },
                      child: Container(
                        width: 275, // Panjang tombol
                        height: 50, // Lebar tombol
                        decoration: BoxDecoration(
                          color: Color(0xFF1F2544), // Warna latar tombol (#1F2544)
                          borderRadius: BorderRadius.circular(5), // Mengatur sudut tombol
                        ),
                        child: Center(
                          child: Text(
                            'Simpan',
                            style: TextStyle(
                              fontFamily: 'Manuale', // Menggunakan font Manuale
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}