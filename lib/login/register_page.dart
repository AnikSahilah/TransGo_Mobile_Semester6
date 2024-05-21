import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transgo_mobile/login/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/png/bulet_register_atas.png',
                  width: 300,
                  height: 150,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Registrasi',
                      style: TextStyle(
                        fontFamily: 'Manuale',
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color(0xFF1F2544), // Menggunakan warna tombol (#1F2544)
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Nama',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Alamat',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Nomor HP',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        DropdownButton<String>(
                          hint: Text('Jenis Kelamin'),
                          items: <String>['Laki-laki', 'Perempuan'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // Tambahkan logika ketika pilihan jenis kelamin berubah
                          },
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: InkWell(
                            onTap: () {
                              // Tambahkan logika untuk tombol login di sini
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
                                  'Register',
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
                          const Text("Sudah memiliki akun?"),
                          TextButton(
                              onPressed: () {
                                Get.to(const LoginPage());
                              },
                              child: const Text("Masuk"))
                        ],
                      )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}