import 'package:flutter/material.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/features/LoginorSignUp/presentation/view/widgets/Login_SignUpButtons/Login_Button.dart';
import 'package:smah/features/LoginorSignUp/presentation/view/widgets/Login_SignUpButtons/SignUp_Button.dart';

import '../../../../../../core/Constants/Constants.dart';

class LoginSignUpButtons extends StatelessWidget {
  const LoginSignUpButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         SizedBox(
          width: 20,
        ),
        LoginButton(),
        SizedBox(
          width: 15,
        ),
         SignUpButton(),
        SizedBox(
          width: 20,
        ),
      ],
    );


  }
}

