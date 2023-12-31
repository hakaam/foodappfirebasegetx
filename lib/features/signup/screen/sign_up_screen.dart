import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodappfirebasegetx/constant/constant_color.dart';
import 'package:foodappfirebasegetx/constant/constant_text_style.dart';
import 'package:foodappfirebasegetx/route/route_name.dart';
import 'package:foodappfirebasegetx/widgets/custom_button_widget.dart';
import 'package:get/get.dart';

import '../../../widgets/textform_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 36, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find Favorite Menu s Start From Here!',
                style: ConstantTextStyle.stylePoppins(
                    fontSize: 22, fontWeight: FontWeight.w600, height: 1.4),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
                width: Get.size.width,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: 81,
                        height: 15,
                        color: tealColor,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 2,
                      child: Text(
                        'Sign Up',
                        style: ConstantTextStyle.stylePoppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                label: 'Username',
                hintText: 'Your Name',
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                label: 'Email',
                hintText: 'Your Email',
              ),

              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                label: 'Password',
                hintText: 'Your Password',
                isPassword: true,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                label: 'Location',
                hintText: 'Your Location',
              ),
              SizedBox(height: 20,),
              RichText(text: TextSpan(
                style: ConstantTextStyle.stylePoppins(
                  color: tealColor
                ),
                children: [
                  TextSpan(
                    text: 'Have an Account? ',
                  ),
                  TextSpan(
                    text: 'Sign In ',
                    recognizer: TapGestureRecognizer()
                      ..onTap =(){
                        Get.toNamed(RouteName.signInScreen);

                      },

                    style: ConstantTextStyle.stylePoppins(
                      fontWeight: FontWeight.w600,
                      textDecoration: TextDecoration.underline,
                      color: tealColor

                    )
                  ),


                ]


              )),
              SizedBox(height: 50,),
              CustomButtonWidget(label: 'Sign Up',
                isFullButton: true,
                onPressed: ()=>Get.toNamed(RouteName.mainScreen),
              ),
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.center,
                child: Text('Terms and Condition',
                  style: ConstantTextStyle.stylePoppins(
                    fontWeight: FontWeight.w300,
                    color: greyColor
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
