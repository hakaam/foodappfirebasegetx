import 'package:flutter/material.dart';
import 'package:foodappfirebasegetx/constant/constant_color.dart';
import 'package:foodappfirebasegetx/constant/constant_text_style.dart';
import 'package:foodappfirebasegetx/features/home/controller/home_controller.dart';
import 'package:foodappfirebasegetx/features/home/screen/widget/card_slider.dart';
import 'package:foodappfirebasegetx/features/home/screen/widget/sliderr.dart';
import 'package:get/get.dart';
import '../../../widgets/header_sction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderSection(),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: ConstantTextStyle.stylePoppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: greyColor),
                        suffixIcon: Icon(
                          Icons.search,
                          size: 24,
                          color: greyColor,
                        ),
                        filled: true,
                        fillColor: Color(0xff57585C),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(color: Color(0xff57585C)))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Sliderr(homeController: _homeController),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 75,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _homeController.categoryList.length,
                      itemBuilder: (context, index) => Container(
                         margin: EdgeInsets.symmetric(
                           horizontal: 10
                         ),
                        child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    _homeController.categoryList[index]
                                        ['imageUrl']!,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  _homeController.categoryList[index]['label']!,
                                  style: ConstantTextStyle.stylePoppins(
                                      fontWeight: FontWeight.w500,
                                      color: greenColor),
                                )
                              ],
                            ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
