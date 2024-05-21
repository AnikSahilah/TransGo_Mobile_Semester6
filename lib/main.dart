import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:transgo_mobile/history_customer/hasil_cari.dart';
import 'package:transgo_mobile/history_customer/theme.dart';
import 'package:transgo_mobile/splash_screen.dart';
import 'history_customer/belumacc.dart';
import 'history_customer/history.dart';
import 'profile/profile.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_, child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Navigation Basics',
        home: SplashPage(), // lAPTOPNYA LAMA
      );
    },
  ));
}

// itu udh klik w kak
class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color(0XFF1F2544),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: IconButton(
                      onPressed: () {
                        Get.to(ProfileCustomer());
                      },
                      icon: const Icon(Icons.person)),
                  title: Text(
                    "WelcomeBack",
                    style: txtJejeMain,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Get.to(HistoryCustomer());
                      },
                      icon: const Icon(Icons.search, color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: [buildCard(), buildCard()],
        ),
      ),
    );
  }

  Widget buildCard() {
    return GFCard(
      boxFit: BoxFit.cover,
      titlePosition: GFPosition.start,
      image: Image.asset(
        'assets/images/png/map.png',
        height: Get.height * 0.2,
        width: Get.width,
        fit: BoxFit.cover,
      ),
      showImage: true,
      title: const GFListTile(
        avatar: GFAvatar(
          backgroundImage: AssetImage(
            'assets/images/png/map.png',
          ),
        ),
        titleText: 'Game Controllers',
        subTitleText: 'PlayStation 4',
      ),
      content: const Text("Some quick example text to build on the card"),
      buttonBar: GFButtonBar(
        children: <Widget>[
          const GFAvatar(
            backgroundColor: GFColors.PRIMARY,
            child: Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
          GFAvatar(
            backgroundColor: GFColors.SECONDARY,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          const GFAvatar(
            backgroundColor: GFColors.SUCCESS,
            child: Icon(
              Icons.phone,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
