import 'dart:io';

import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
// import 'package:seymath/page/memori/type/Dashboard/theme.dart';

import 'theme.dart';

class Tiket extends StatefulWidget {
  const Tiket(
      {super.key,
      required this.awalkota,
      required this.tujuankota,
      required this.tanggal,
      required this.jumlah});
  final String awalkota;
  final String tujuankota;
  final String tanggal;
  final String jumlah;

  @override
  State<Tiket> createState() => _TiketState();
}

class _TiketState extends State<Tiket> {
  final String assetName = 'assets/svg/Background_bis.svg';
  String getFormattedDate() {
    final DateTime now = DateTime.now();
    final DateFormat formatter =
        DateFormat('EEEE, dd MMMM'); // Format hari, tanggal, bulan
    return formatter.format(now);
  }

  void buildBarcode(
    Barcode bc,
    String data, {
    String? filename,
    double? width,
    double? height,
    double? fontHeight,
  }) {
    /// Create the Barcode
    final svg = bc.toSvg(
      data,
      width: width ?? 200,
      height: height ?? 80,
      fontHeight: fontHeight,
    );

    // Save the image
    filename ??= bc.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();
    File('$filename.svg').writeAsStringSync(svg);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          _buildHeader(),
          Center(
            child: Container(
              height: 500.h,
              width: 320.w,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: const Color(0XFFD8DAD9),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(getFormattedDate(), style: txtJejeHead),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.awalkota, style: txtJejeHead),
                      Row(
                        children: [
                          const DottedLine(
                            dashLength: 10,
                            dashGapLength: 5,
                            lineThickness: 10,
                            dashRadius: 20,
                            lineLength: 20,
                          ),
                          const DottedLine(
                            dashLength: 2,
                            dashGapLength: 5,
                            lineThickness: 5,
                            lineLength: 30,
                          ),
                          Image.asset('assets/png/mobil.jpg'),
                          const DottedLine(
                            dashLength: 2,
                            dashGapLength: 5,
                            lineThickness: 5,
                            lineLength: 30,
                          ),
                          const DottedLine(
                            dashLength: 10,
                            dashGapLength: 5,
                            lineThickness: 10,
                            dashRadius: 20,
                            lineLength: 20,
                          ),
                        ],
                      ),
                      Text(widget.tujuankota, style: txtJejeHead),
                    ],
                  ),
                  const Gap(20),
                  Text(widget.tanggal, style: txtJejeSubhead),
                  Text("non Stop", style: txtJejeSubhead),
                  SizedBox(
                      height: 250,
                      width: 200,
                      child: Image.asset('assets/png/back_bis.png')),
                  Text("BUS AKAS", style: txtJejeMainBlack),
                  Container(
                    height: 100.h,
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: clrJeje,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama", style: txtJejelittleblue),
                            Text("Jeje Cantik", style: txtJejelittle),
                            Text("Jumlah Tiket", style: txtJejelittleblue),
                            Text(widget.jumlah, style: txtJejelittle),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Jenis Kelamin", style: txtJejelittleblue),
                            Text("Perempuan", style: txtJejelittle),
                            Text("Jam Berangkat", style: txtJejelittleblue),
                            Text("09:00", style: txtJejelittle),
                          ],
                        )
                      ],
                    ),
                  ),
                  BarcodeWidget(
                    barcode: Barcode.code128(), // Barcode type and settings
                    data: 'Barcode 128', // Content
                    width: 200, // Width of the barcode
                    height: 60, // Height of the barcode
                    drawText: false, // Hide barcode text
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: clrJeje,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      title: const Text(
        "Tiket Jeje",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 180,
      width: Get.width,
      decoration: const BoxDecoration(
        color: Color(0XFF1F2544),
        border: Border(),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
          child: Image.asset('assets/images/png/image_bus_map')),
    );
  }
}
