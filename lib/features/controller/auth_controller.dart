import 'package:get/get.dart';
class AuthController extends  GetxController{
    final RxBool _isObscure=false.obs;
    RxBool get isObsecure =>_isObscure;

    void changeisObscure(){

        _isObscure.value = !_isObscure.value;

    }

}