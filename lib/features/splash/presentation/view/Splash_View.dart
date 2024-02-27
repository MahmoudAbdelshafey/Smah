import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/features/splash/presentation/view/widgets/CustomLogoPreview.dart';
import 'package:smah/features/splash/presentation/view/widgets/CustomSplashTitle.dart';

import '../../../login/presentation/view/Login_View.dart';
import 'widgets/fade_animtion.dart';

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CustomLogoPreview(),
           CustomSplashTitle(),

        ],
      ),
    );
  }

}


