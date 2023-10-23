import 'package:get/get.dart';

import '../controller/main_controller.dart';
class MainBainding extends Bindings {
  @override
  void dependencies() {
    // Get.put(ProfileController());
    // Get.put(PromoController());
    // Get.put(FavoriteController());
    Get.put(MainController());
  }
}
