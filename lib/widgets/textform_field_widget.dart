import 'package:flutter/material.dart';
import 'package:foodappfirebasegetx/features/controller/auth_controller.dart';

import '../constant/constant_color.dart';
import '../constant/constant_text_style.dart';
import 'package:get/get.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget(
      {super.key,
      required this.label,
      required this.hintText,
      this.isPassword});
  final String label;
  final String hintText;
  final bool? isPassword;
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: ConstantTextStyle.stylePoppins(
                fontSize: 16, fontWeight: FontWeight.w600)),
        SizedBox(
          height: 13,
        ),
        Obx(() => TextFormField(
              obscureText:
                  authController.isObsecure.isTrue && isPassword != null,
              style: ConstantTextStyle.stylePoppins(color: whiteColor),
              decoration: InputDecoration(
                  suffixIcon: isPassword != null
                      ? IconButton(
                          onPressed: () => authController.changeisObscure(),
                          icon: Icon(
                authController.isObsecure.isTrue
                            ?Icons.visibility_off
                            :Icons.visibility,
                            color: Colors.white,
                          ))
                      : SizedBox(),
                  hintText: hintText,
                  hintStyle: ConstantTextStyle.stylePoppins(color: greyColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: tealColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: tealColor))),
            ))
      ],
    );
  }
}
