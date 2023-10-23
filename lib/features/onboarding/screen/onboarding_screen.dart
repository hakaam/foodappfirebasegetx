import 'package:flutter/material.dart';
import 'package:foodappfirebasegetx/constant/constant_color.dart';
import 'package:foodappfirebasegetx/constant/constant_text_style.dart';
import 'package:foodappfirebasegetx/route/route_name.dart';
import 'package:foodappfirebasegetx/widgets/custom_button_widget.dart';
import 'package:get/get.dart';

import '../controller/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final onboardingController = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (value) {
                onboardingController.indexImage.value = value;
              },
              itemCount: onboardingController.imagesOnboarding.length,
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: tealColor,
                        image: DecorationImage(
                            image: AssetImage(
                                onboardingController.imagesOnboarding[index]),
                            fit: BoxFit.cover)),
                  )),
          Positioned(
              bottom: 100,
              left: 114,
              right: 114,
              child: Column(
                children: [
                  CustomButtonWidget(label: 'Get Started',
                    onPressed: ()=>Get.toNamed(RouteName.signUpScreen),
                  
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                      spacing: 8,
                      children: List.generate(
                        onboardingController.imagesOnboarding.length,
                        (index) => Obx(() => Container(
                              width: 45,
                              height: 5,
                              color:
                                  onboardingController.indexImage.value == index
                                      ? whiteColor
                                      : greyColor,
                            )),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
