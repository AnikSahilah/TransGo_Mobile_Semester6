import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:transgo_mobile/history_customer/hasil_cari.dart';
import 'package:transgo_mobile/history_customer/theme.dart';

import 'model.dart';
import 'pembayaran.dart';

class HistoryCustomer extends StatefulWidget {
  const HistoryCustomer({
    Key? key,
  }) : super(key: key);
//jgn section chat kak wkwk nnti kk tau lagi aku dimana wkwk
  @override
  State<HistoryCustomer> createState() => _HistoryCustomerState();
}

class _HistoryCustomerState extends State<HistoryCustomer>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<ModelTrack> track = [
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
  final List<String> _tabs = [
    'Belum Acc',
    'Sudah Acc',
    'Pembayaran',
    'Selesai',
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  Tab _buildTab(String tabText) {
    return Tab(
      child: Center(
        child: Text(
          tabText,
          style: txtsmall,
        ),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      backgroundColor: Color(0XFF1F2544),
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
      actions: [
        IconButton(
            onPressed: () => Get.to(HasilCariPage()), icon: Icon(Icons.search))
      ],
    );
  }

  @override
  Widget build(BuildContext context) //<= OHHH NI KODE WARNA biru tadi kak
  {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0.h),
          child: Container(
            child: Column(
              children: [
                _appbar(),
                Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 10).w,
                    decoration: taphistoryDecor,
                    child: Text("History"),
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  isScrollable: true,
                  tabs: _tabs.map((tabText) => _buildTab(tabText)).toList(),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: const PageScrollPhysics(),
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: track.length,
              itemBuilder: (context, index) {
                return TrackStat(
                  modelTrack: track[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget textButton(Function() onTap, String title, Color color) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(color: color),
      ),
    );
  }
}
