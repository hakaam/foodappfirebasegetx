import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../constant/constant_text_style.dart';

class HomeController extends GetxController {
  PageController? pageController;
  final RxInt _indexSlider = 0.obs;
  RxInt get indexSlider => _indexSlider;
  void changeIndex(int value) {
    _indexSlider.value = value;
  }

  final List<Map<String, dynamic>> cardList = [
    {
      'imageUrl': 'images/image_slider_1.png',
      'contentWidget': Column(
        children: [
          Text(
            'Icelicious',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Only for you!',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Discount Up To',
            style: ConstantTextStyle.stylePoppins(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '75%',
            style: ConstantTextStyle.stylePoppins(
                fontWeight: FontWeight.w500, fontSize: 48),
          ),
        ],
      ),
      'isCenter': false,
    },
    {
      'imageUrl': 'images/image_slider_2.png',
      'isCenter': true,
      'contentWidget': Column(
        children: [
          Text(
            'Icelicious 2',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Only for you!',
            style: ConstantTextStyle.stylePoppins(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Discount Up To',
            style: ConstantTextStyle.stylePoppins(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '75%',
            style: ConstantTextStyle.stylePoppins(
                fontWeight: FontWeight.w500, fontSize: 48),
          ),
        ],
      )
    },
  ];

  final categoryList = [
    {'imageUrl': 'images/hamburger_icon.png', 'label': 'Burgers'},
    {'imageUrl': 'images/spaghetti_icon.png', 'label': 'Spaghetti'},
    {'imageUrl': 'images/coffee_icon.png', 'label': 'Coffee'},
    {'imageUrl': 'images/milkshake_icon.png', 'label': 'Milkshake'},
    {'imageUrl': 'images/pizza_icon.png', 'label': 'Pizza'}
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController(viewportFraction: 0.85);
  }
}
