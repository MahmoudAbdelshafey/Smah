import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/GetHelper/GetHelper.dart';
import 'package:smah/features/LoginorSignUp/presentation/view/WelcomeView.dart';
import '../../../../../core/Styles/Styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 55,
          decoration: BoxDecoration(
              color: kSecondry_Color, borderRadius: BorderRadius.circular(8)),
          child: TextButton(
              onPressed: () async {
                final pres = await SharedPreferences.getInstance();
                pres.setBool('onBoarding', true);

               GetHelper.FadeTransition(() => const WelcomeView());
              },
              child: Text(
                'Get Started',
                style: normalTextStyleEn.copyWith(color: Colors.white),
              )),
        ),
      ],
    );
  }
}
