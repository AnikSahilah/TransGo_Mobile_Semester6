import 'package:flutter/cupertino.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:transgo_mobile/history_customer/pemesanan.dart';

import 'model.dart';
import 'pembayaran.dart';
import 'theme.dart';

class HasilCariPage extends StatefulWidget {
  const HasilCariPage({Key? key}) : super(key: key);

  @override
  State<HasilCariPage> createState() => _HasilCariPageState();
}

class _HasilCariPageState extends State<HasilCariPage> {
  final List<ModelTrack> modelTrack = [
    ModelTrack(
        harga: 85000.toString(),
        jamAwal: 1200,
        jamTujuan: 1700,
        kotaAwal: "Banten",
        kotaTujuan: "Jawa"),
    ModelTrack(
        harga: 10000.toString(),
        jamAwal: 1200,
        jamTujuan: 1700,
        kotaAwal: "Surabaya",
        kotaTujuan: "Jakarta"),
    ModelTrack(
        harga: 85000.toString(),
        jamAwal: 1200,
        jamTujuan: 1700,
        kotaAwal: "Banten",
        kotaTujuan: "Jawa"),
    ModelTrack(
        harga: 85000.toString(),
        jamAwal: 1200,
        jamTujuan: 1700,
        kotaAwal: "Banten",
        kotaTujuan: "Jawa"),
    ModelTrack(
        harga: 85000.toString(),
        jamAwal: 1200,
        jamTujuan: 1700,
        kotaAwal: "Banten",
        kotaTujuan: "Jawa"),
    ModelTrack(
        harga: 85000.toString(),
        jamAwal: 1200,
        jamTujuan: 1700,
        kotaAwal: "Banten",
        kotaTujuan: "Jawa"),
    ModelTrack(
        harga: 85000.toString(),
        jamAwal: 1200,
        jamTujuan: 1700,
        kotaAwal: "Banten",
        kotaTujuan: "Jawa"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: Get.width * 1,
              color: const Color(0XFF1F2544),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    title: Text(
                      "Hasil Pencarian",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Center(
                      child: Image.asset('assets/images/png/img_bus_map.png',
                          height: 150.h, fit: BoxFit.fill)),
                ],
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.to(PemesananPage());
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(100, 10, 100, 10).w,
                  // decoration: taphistoryDecor,
                  child: Text("Cari"),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.6,
              child: ListView.builder(
                itemCount: modelTrack.length,
                itemBuilder: (context, index) {
                  return TrackStat(
                    modelTrack: modelTrack[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}