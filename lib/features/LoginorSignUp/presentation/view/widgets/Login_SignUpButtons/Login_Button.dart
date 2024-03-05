import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/GetHelper/GetHelper.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/features/login/presentation/view/Login_View.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          Get.to( const LoginView(),
              transition: Transition.rightToLeftWithFade,
              duration: const Duration(milliseconds: 600));
        },
        child: Container(
          alignment: Alignment.center,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40)),
          child: Text(
            'Login',
            style: normalTextStyleEn.copyWith(color: kSecondry_Color),
          ),
        ),
      ),
    );
  }
}
