import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'model.dart';
import 'theme.dart';

class TrackStat extends StatelessWidget {
  const TrackStat({super.key, required this.modelTrack});
  final ModelTrack modelTrack;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: Get.width * 0.9,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      decoration: tapboxdecor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/png/map.png'),
              Text(modelTrack.harga, style: txtHeading),
              Image.asset('assets/images/png/map.png')
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/png/bus.png'),
              const DottedLine(
                dashLength: 2,
                dashGapLength: 5,
                lineThickness: 5,
                lineLength: 100,
              ),
              Image.asset('assets/images/png/bus.png'),
              const DottedLine(
                dashLength: 2,
                dashGapLength: 5,
                lineThickness: 5,
                lineLength: 100,
              ),
              Image.asset('assets/images/png/bus.png'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(modelTrack.kotaAwal, style: txtsubHeading),
                  Text(modelTrack.jamAwal.toString()),
                ],
              ),
              Column(
                children: [
                  Text(modelTrack.kotaTujuan, style: txtsubHeading),
                  Text(modelTrack.jamTujuan.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
