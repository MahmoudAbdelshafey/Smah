import 'package:flutter/material.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/Styles/Styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
