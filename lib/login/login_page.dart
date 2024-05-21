import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transgo_mobile/history_customer/hasil_cari.dart';
import 'package:transgo_mobile/main.dart';

import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Warna latar belakang tampilan (putih)
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Menempatkan konten ke kiri
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/png/bulet_login_atas.png',
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 20), // Spasi antara gambar dan konten berikutnya
            Container(
              width: 300, // Lebar kotak
              height: 400, // Tinggi kotak
              decoration: BoxDecoration(
                color: Color(0xFFD8DAD9).withOpacity(0.65), // Warna latar belakang kotak (abu-abu muda dengan 35% kecerahan)
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5), // Radius untuk pojok kanan atas
                  bottomRight: Radius.circular(5), // Radius untuk pojok kanan bawah
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 0),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Manuale',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: InkWell(
                            onTap: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HasilCariPage()),
                              );
                            },
                            child: Container(
                              width: 275, // Panjang tombol
                              height: 50, // Lebar tombol
                              decoration: BoxDecoration(
                                color: Color(0xFF1F2544), // Warna latar tombol (#1F2544) // Warna latar tombol
                                borderRadius: BorderRadius.circular(5), // Mengatur sudut tombol
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'Manuale', // Menggunakan font Manuale
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                              children: [
                                const Text("Belum memiliki akun?"),
                                TextButton(
                                    onPressed: () {
                                      Get.to(const RegisterPage());
                                    },
                                    child: const Text("Daftar"))
                              ],
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}