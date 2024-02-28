import 'package:flutter/material.dart';
import 'package:smah/core/Styles/Styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
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
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
