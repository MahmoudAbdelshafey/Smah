import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smah/core/Themes/Themes.dart';
import 'package:smah/features/SignUp/Presentation/view/SignUp.dart';
import 'package:smah/features/login/presentation/view/Login_View.dart';
import 'package:smah/features/splash/presentation/view/Splash_View.dart';

import 'features/OnBoarding/presentation/view/onboarding_View.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences  prefs = await SharedPreferences.getInstance();
  final onBoarding = prefs.getBool('onBoarding')??false;
  runApp(SmahApp(onboarding: onBoarding,));
}
class SmahApp extends StatelessWidget {
  final bool onboarding;
  const SmahApp({super.key,  this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: LightTheme,
      debugShowCheckedModeBanner: false,
      home: onboarding? const SplashView(): const OnBoardingView(),
    );
  }
}
