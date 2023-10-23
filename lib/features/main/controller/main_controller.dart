import 'package:foodappfirebasegetx/constant/constant_color.dart';
import 'package:foodappfirebasegetx/constant/constant_text_style.dart';
import 'package:foodappfirebasegetx/features/favourite/screen/favourite_screen.dart';
import 'package:foodappfirebasegetx/features/home/screen/home_screen.dart';
import 'package:foodappfirebasegetx/features/person/screen/person_screen.dart';
import 'package:foodappfirebasegetx/features/promo/screen/promo_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainController extends GetxController {
  final RxInt _indexBottomNavbar = 0.obs;
  RxInt get indexBottomNavbar => _indexBottomNavbar;

  void changeIndexItem(int val) {
    _indexBottomNavbar.value = val;
  }

  final List<BottomNavigationBarItem> listBottomNav = [
    BottomNavigationBarItem(
        backgroundColor: cardColor,
        label: '',
        activeIcon: Container(
          height: 20,
          margin: EdgeInsets.only(top: 12),
          child: Column(
            children: [
              ClipOval(
                child: Container(
                  width: 5,
                  height: 5,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Home',
                style: ConstantTextStyle.stylePoppins(color: whiteColor),
              )
            ],
          ),
        ),
        icon: Container(
          margin: EdgeInsets.only(top: 12),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('images/home_icon.png'))),
        )),
    BottomNavigationBarItem(
        label: '',
        activeIcon: Container(
          height: 20,
          margin: EdgeInsets.only(top: 12),
          child: Column(
            children: [
              ClipOval(
                child: Container(
                  width: 5,
                  height: 5,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Promo',
                style: ConstantTextStyle.stylePoppins(color: whiteColor),
              )
            ],
          ),
        ),
        icon: Container(
          margin: EdgeInsets.only(top: 12),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('images/promo_icon.png'))),
        )),
    BottomNavigationBarItem(
        label: '',
        activeIcon: Container(
          height: 20,
          margin: EdgeInsets.only(top: 12),
          child: Column(
            children: [
              ClipOval(
                child: Container(
                  width: 5,
                  height: 5,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Favorite',
                style: ConstantTextStyle.stylePoppins(color: whiteColor),
              )
            ],
          ),
        ),
        icon: Container(
          margin: EdgeInsets.only(top: 12),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/favourite_icon.png'))),
        )),
    BottomNavigationBarItem(
        label: '',
        activeIcon: Container(
          height: 20,
          margin: EdgeInsets.only(top: 12),
          child: Column(
            children: [
              ClipOval(
                child: Container(
                  width: 5,
                  height: 5,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Person',
                style: ConstantTextStyle.stylePoppins(color: whiteColor),
              )
            ],
          ),
        ),
        icon: Container(
          margin: EdgeInsets.only(top: 10),
          width: 28,
          height: 28,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('images/person_icon.png'))),
        )),
  ];

  final List<Widget> bodyMain = [
    HomeScreen(),
    PromoScreen(),
    FavouriteScreen(),
    PersonScreen()
  ];
}
