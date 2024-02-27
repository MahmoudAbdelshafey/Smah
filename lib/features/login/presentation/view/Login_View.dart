import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/Styles/Styles.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Go BackQ',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,

            )),
          ],
        ),
        centerTitle: true,
        backgroundColor: kSecondry_Color,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}
