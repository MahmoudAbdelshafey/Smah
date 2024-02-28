import 'package:flutter/material.dart';
import 'package:smah/core/Assets/Assets.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){},
          child: Image.asset(
            SigninWithFacebook,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: GestureDetector(
            onTap: (){},
            child: Image.asset(SigninWithTwitter,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Image.asset(SigninWithGoogle,
            width: 50,
            fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
