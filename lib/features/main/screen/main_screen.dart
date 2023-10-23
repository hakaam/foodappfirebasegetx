import 'package:flutter/material.dart';
import 'package:foodappfirebasegetx/constant/constant_color.dart';
import 'package:foodappfirebasegetx/features/main/controller/main_controller.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});

  final MainController mainC=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar:Obx(()=> BottomNavigationBar(
        currentIndex: mainC.indexBottomNavbar.value,
        onTap: (value)=>mainC.changeIndexItem(value),
        type: BottomNavigationBarType.fixed,
        backgroundColor: cardColor,
        items: mainC.listBottomNav
      )),
      body: Obx(() => mainC.bodyMain[mainC.indexBottomNavbar.value])
    );
  }
}
