import 'package:flutter/material.dart';
import 'package:smah/core/Themes/Themes.dart';
import 'package:smah/features/splash/presentation/view/Splash_View.dart';

void main(){
  runApp(SmahApp());
}
class SmahApp extends StatelessWidget {
  const SmahApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: LightTheme,
      debugShowCheckedModeBanner: false,
      home: SecondClass(),

    );
  }
}
