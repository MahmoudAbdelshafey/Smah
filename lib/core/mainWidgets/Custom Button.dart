import 'package:flutter/material.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/Styles/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.Title, required this.BtnFun});
final String Title;
final VoidCallback BtnFun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: BtnFun,
      child: Container(

        height: 50,
        alignment: Alignment.center,
        width: double.infinity,

        decoration: BoxDecoration(
          color: kSecondry_Color,
          borderRadius: BorderRadius.circular(40),


        ),
        child: Text(Title, style: RobotoButtonChildStyle),

      ),
    );
  }
}
