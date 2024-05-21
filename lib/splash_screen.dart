import 'package:flutter/material.dart';
import 'package:transgo_mobile/login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'assets/images/png/lt-splash-screen.png',
              fit: BoxFit.contain,
              height: 300, // Sesuaikan tinggi gambar sesuai kebutuhan
            ),
          ),
        ],
      ),
    );
  }
}