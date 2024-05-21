import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:transgo_mobile/history_customer/belumacc.dart';
import 'package:transgo_mobile/history_customer/theme.dart';
import 'package:transgo_mobile/reset_password/reset.dart';
import '../history_customer/history.dart';

class ProfileCustomer extends StatelessWidget {
  const ProfileCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color(0xFF1f2545),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back when the arrow is tapped
          },
          child: const Icon(
            Icons.arrow_back_ios, // Use the arrow icon
            color: Colors.white, // Set the arrow color to white
          ),
        ),
      ),
      child: Stack(
        children: [
          // Blue background covering 50% of the screen height
          Container(
            color: const Color(0xFF1f2545),
            height: MediaQuery.of(context).size.height / 2.2,
          ),
          // arrow color white
          // Content floating above the blue background
          SizedBox(
            height: Get.height * 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/jpg/example.jpg', // Replace with your image asset path
                      width: 120, // Adjust width as needed
                      height: 120, // Adjust height as needed
                      fit: BoxFit.cover, // Adjust BoxFit as needed
                    ),
                  ),
                  Gap(20),
                  Text(
                    'Jeje Cantik ',
                    style: txtJejeMain.copyWith(
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    'Customer',
                    style: txtJejeMain.copyWith(
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Gap(10),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: List.generate(
                          5,
                          (index) => BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 1,
                            blurRadius: 0.25,
                            offset: const Offset(0, 3),
                          ),
                        )),
                    child: Column(
                      children: [
                        _buildOption(context, Icons.history, 'History'),
                        const Divider(
                          color: Colors.black, // Warna garis hitam
                          thickness: 1.0, // Ketebalan garis
                          height: 1.0, // Tinggi garis
                        ),
                        _buildOption(
                            context, Icons.password, 'Change Password'),
                        const Divider(
                          color: Colors.black, // Warna garis hitam
                          thickness: 1.0, // Ketebalan garis
                          height: 1.0, // Tinggi garis
                        ),
                        _buildOption(context, Icons.email, 'Change Email'),
                        const Divider(
                          color: Colors.black, // Warna garis hitam
                          thickness: 1.0, // Ketebalan garis
                          height: 1.0, // Tinggi garis
                        ),
                        _buildOption(
                            context, Icons.phone, 'Change Number Phone'),
                        const Divider(
                          color: Colors.black, // Warna garis hitam
                          thickness: 1.0, // Ketebalan garis
                          height: 1.0, // Tinggi garis
                        ),
                        _buildOption(context, Icons.map, 'Change Address'),
                        const Divider(
                          color: Colors.black, // Warna garis hitam
                          thickness: 1.0, // Ketebalan garis
                          height: 1.0, // Tinggi garis
                        ),
                        _buildOption(context, Icons.logout, 'Logout'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildOption(BuildContext context, IconData icon, String text) {
  EdgeInsets margin = const EdgeInsets.all(10.0); // Margin default

  // Menambahkan margin bawah hanya pada opsi yang ditentukan
  if (text == 'History' ||
      text == 'Change Password' ||
      text == 'Change Email' ||
      text == 'Change Number Phone' ||
      text == 'Change Address' ||
      text == 'Logout') {
    margin = const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 0.0);
  }

  return GestureDetector(
    onTap: () {
      // Handle option tapped
      if (text == 'History') {
        Get.to(HistoryCustomer());
      } else if (text == 'Change Password') {
        Get.to(ResetPage());
      } else if (text == 'Change Password') {
        Get.to(ResetPage());
      } else if (text == 'Change Password') {
        Get.to(ResetPage());
      } else if (text == 'Change Password') {
        Get.to(ResetPage());
      }
    },
    child: Container(
      margin: margin, // Use appropriate margin
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,
                  color: text == 'Logout'
                      ? const Color.fromARGB(255, 255, 1, 1)
                      : const Color.fromARGB(255, 70, 38, 38)),
              const SizedBox(width: 10.0),
              Text(
                text, // Use the text parameter passed to the method
                style: TextStyle(
                  color: text == 'Logout'
                      ? const Color.fromARGB(255, 255, 1, 1)
                      : const Color.fromARGB(255, 70, 38, 38),
                  fontSize: 16,
                  decoration: text == 'History' ||
                          text == 'Change Password' ||
                          text == 'Change Email' ||
                          text == 'Change Number Phone' ||
                          text == 'Change Address' ||
                          text == 'Logout'
                      ? TextDecoration.none
                      : TextDecoration.underline,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded,
              color: text == 'Logout'
                  ? const Color.fromARGB(255, 255, 1, 1)
                  : const Color.fromARGB(255, 70, 38, 38)),
        ],
      ),
    ),
  );
}
