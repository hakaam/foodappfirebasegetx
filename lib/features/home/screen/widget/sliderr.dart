import 'package:flutter/material.dart';
import 'package:foodappfirebasegetx/features/home/controller/home_controller.dart';

import '../../../../constant/constant_color.dart';
import 'card_slider.dart';
import 'package:get/get.dart';
class Sliderr extends StatelessWidget {
  const Sliderr({super.key, required this.homeController});
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         SizedBox(
           height: 218,
           child: PageView.builder(
               onPageChanged: (value)=>homeController.changeIndex(value),

               controller: homeController.pageController,
               itemCount: homeController.cardList.length,
               itemBuilder: (context, index) => Container(
                   margin: EdgeInsets.symmetric(
                       horizontal: 10

                   ),
                   child: CardSlider(
                     imageUrl: homeController.cardList[index]['imageUrl'],
                     contentWidget: homeController.cardList[index]['contentWidget'],
                     isCenter: homeController.cardList[index]['isCenter'],

                   ))),
         ),
         SizedBox(height: 10,),
         Container(
           margin: EdgeInsets.only(left: 36),
           alignment: Alignment.topLeft,
           child: Wrap(
             spacing: 8,
             children: List.generate(
                 homeController.cardList.length,
                     (index) => Obx(() =>  Container(
                   width: 45,
                   height: 5,
                   color: homeController.indexSlider.value==index
                       ?greenColor
                       :greyColor,
                 ))),
           ),
         )


       ],


    );
  }
}
