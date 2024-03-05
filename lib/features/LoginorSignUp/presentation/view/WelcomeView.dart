import 'package:flutter/material.dart';
import 'package:smah/core/Assets/Assets.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/features/LoginorSignUp/presentation/view/widgets/Login_SignUpButtons/Login_SignUpButtons.dart';
import 'package:smah/features/LoginorSignUp/presentation/view/widgets/Login_SignUpButtons/socialMediaIcons.dart';

import '../../../../core/Styles/Styles.dart';
import 'widgets/Login_SignUpButtons/CustomDivider.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondry_Color,
      body: Column(

        children: [
          const Spacer(flex: 3,),
          Image.asset(
            LogoIcon,
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.25,
          ),
          const Spacer(flex: 1,),
          Text(
            'Welcome To \n Smah',
            style: largeTextStyleEn.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 2,),
          const LoginSignUpButtons(),
          const Spacer(flex: 2,),
          const Padding(
            padding:  EdgeInsets.only(bottom: 24.0),
            child:  CustomDivider(),
          ),
          const SocialMediaIcons(),
          const  Spacer(flex: 2,),

        ],
      ),
    );
  }
}
