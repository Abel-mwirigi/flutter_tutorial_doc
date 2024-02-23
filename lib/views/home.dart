import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:flutter_application_2/controllers/homeController.dart';
import 'package:flutter_application_2/views/calculator.dart';
import 'package:flutter_application_2/views/students.dart';
import 'package:get/get.dart';

HomeController homeController = Get.put(HomeController());

var screens = [
  Text("Home"),
  Calculator(),
  //Text("settings"),
  Students(),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Du app")),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black,
          color: primaryColor,
          items: const [
            Icon(
              Icons.home,
              color: appWhiteColor,
            ),
            Icon(
              Icons.person,
              color: appWhiteColor,
            ),
            Icon(
              Icons.settings,
              color: appWhiteColor,
            ),
          ],
          onTap: (index) {
            homeController.updateSelectedPage(index);
          }),
      body: Obx(() => Center(
            child: screens[homeController.selectedpage.value],
          )),
    );
  }
}
