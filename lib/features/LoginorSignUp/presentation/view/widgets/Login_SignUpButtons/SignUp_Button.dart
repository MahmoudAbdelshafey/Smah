import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/GetHelper/GetHelper.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/features/SignUp/Presentation/view/SignUp.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
      Get.to( const SignUpView(),
          transition: Transition.rightToLeftWithFade,
          duration: const Duration(milliseconds: 600));

            },
        child: Container(
          alignment: Alignment.center,
          height: 60,
          decoration: BoxDecoration(
              color: kSecondry_Color,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.white, width: 2)),
          child: Text(
            'SignUp',
            style: normalTextStyleEn.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
