import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1f2545),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back when the arrow is tapped
          },
          child: const Icon(
            CupertinoIcons.back, // Menggunakan icon back dari CupertinoIcons
            color: Colors.white, // Set the arrow color to white
          ),
        ),
        title: Text(
          "Reset password",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: const Color(0xFF1f2545),
            height: 80, // Mengatur tinggi container
          ),
          // Hapus Positioned
        ],
      ),
    );
  }
}
