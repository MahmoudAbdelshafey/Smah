import 'package:flutter/material.dart';
import 'package:smah/core/Assets/Assets.dart';
import 'package:smah/core/Constants/Constants.dart';

import '../../../../core/Styles/Styles.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondry_Color,
      body: Column(
        children: [
          Image.asset(
            Logo,
          ),
          Text(
            'Welcome To \n Smah',
            style: largeTextStyleEn.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
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
              SizedBox(
                width: 15,
              ),
              Expanded(
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
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Text(
                'Or Via Social Media',
                style: normalTextStyleEn.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 1,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){},
                child: Image.asset(
                  'assets/images/facebook.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Image.asset('assets/images/facebook.png',
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Image.asset('assets/images/facebook.png',
                  width: 50,
                  fit: BoxFit.cover,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
