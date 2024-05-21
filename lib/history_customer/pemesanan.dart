import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
// import 'package:seymath/page/memori/type/Dashboard/tiket.dart';
import 'package:transgo_mobile/history_customer/tiket.dart';

import 'theme.dart';

class PemesananPage extends StatefulWidget {
  const PemesananPage({super.key});

  @override
  State<PemesananPage> createState() => _PemesananPageState();
}

class _PemesananPageState extends State<PemesananPage> {
  final TextEditingController controllerTiket = TextEditingController();
  DateTime? selectedDate;

  late String selectedBerangkat = 'Jakarta';
  late String selectedTujuan = 'Surabaya';

  final List<String> cities = [
    'Jakarta',
    'Surabaya',
    'Bandung',
    'Medan',
    'Semarang',
    'Palembang',
    'Makassar',
    'Yogyakarta',
    'Malang',
    'Denpasar',
    'Padang',
    'Manado',
    'Balikpapan',
    'Pekanbaru',
    'Pontianak',
    'Banjarmasin',
    'Batam',
    'Samarinda',
    'Jayapura',
    'Mataram'
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: clrJeje,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      title: const Text(
        "Pemesanan Tiket",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        color: Color(0XFF1F2544),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/png/img_bus_map.png',
          height: 180,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String value,
    required List<String> items,
    required String hint,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
        padding: const EdgeInsets.all(5.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color(0xFFD8DAD9),
        ),
        child: ListTile(
          leading: const Icon(Icons.directions_bus),
          title: DropdownButton(
            menuMaxHeight: 500.0,
            style: txtJejeSubhead,
            items: items.map((String city) {
              return DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              );
            }).toList(),
            onChanged: onChanged,
            value: value,
          ),
        ));
  }

  Widget _buildDateField() {
    return Container(
      padding: const EdgeInsets.all(5.0),
      width: Get.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xFFD8DAD9),
      ),
      child: ListTile(
        onTap: () => _selectDate(context),
        leading: const Icon(Icons.calendar_month),
        title: Text(
          selectedDate == null
              ? 'Tanggal: 1/1/2024'
              : 'Tanggal: ${selectedDate.toString().split(' ')[0]}',
          style: TextStyle(
              fontSize: 15,
              color: selectedDate == null ? Colors.grey : clrJeje),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Terminal Keberangkatan', style: TextStyle(fontSize: 15)),
          const Gap(10),
          _buildDropdown(
            value: selectedBerangkat,
            items: cities,
            hint: 'Pilih Terminal Keberangkatan',
            onChanged: (String? newValue) {
              setState(() {
                selectedBerangkat = newValue!;
              });
            },
          ),
          const Gap(10),
          const Text('Terminal Tujuan', style: TextStyle(fontSize: 15)),
          const Gap(10),
          _buildDropdown(
            value: selectedTujuan,
            items: cities,
            hint: 'Pilih Terminal Tujuan',
            onChanged: (String? newValue) {
              setState(() {
                selectedTujuan = newValue!;
              });
            },
          ),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Tanggal Keberangkatan',
                      style: TextStyle(fontSize: 15)),
                  const Gap(15),
                  _buildDateField(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Jumlah Tiket', style: TextStyle(fontSize: 15)),
                  const Gap(15),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xFFD8DAD9),
                    ),
                    child: TextField(
                      controller: controllerTiket,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Jumlah Tiket',
                        prefixIcon: Icon(Icons.confirmation_number),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(15),
        ],
      ),
    );
  }

  void _showWarningDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Data Belum Lengkap'),
          content: const Text(
              'Kamu belum isi data yang diperlukan nih, jangan lupa diisi yah!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return MaterialButton(
      onPressed: () {
        if (selectedBerangkat.isEmpty ||
            selectedTujuan.isEmpty ||
            controllerTiket.text.isEmpty ||
            selectedDate == null) {
          _showWarningDialog();
        } else {
          Get.to(Tiket(
              awalkota: selectedBerangkat,
              tujuankota: selectedTujuan,
              tanggal: selectedDate.toString(),
              jumlah: controllerTiket.text));
        }
      },
      child: Container(
        height: 50,
        width: Get.width,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color(0xFF1F2544),
        ),
        child: const Center(
          child: Text(
            "Cari Tiket Sekarang",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: ListView(
          children: [
            _buildHeader(),
            _buildForm(),
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }
}
