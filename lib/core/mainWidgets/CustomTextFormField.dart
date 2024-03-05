import 'package:flutter/material.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/Styles/Styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key,  this.hintText,  this.isPassword = false,  this.preIcon,  this.suffexIcon, required this.labelText, required this.MyController});
final String? hintText;
final String labelText;
final IconData? preIcon;
final IconData? suffexIcon;
final bool isPassword;
final TextEditingController MyController;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool PasswordShown = false;

  @override
  Widget build(BuildContext context) {

    return  TextFormField(
      controller:widget.MyController ,
      validator: (data){
        if(data!.trim().isEmpty || data == null ||data ==''){
          return 'This Field is Required';
        }

      },
      obscureText: widget.isPassword &&!PasswordShown,
        cursorColor: kPrimary_Color,
        style: RobotoHintStyle.copyWith(
          fontWeight: FontWeight.w300,
          color: Colors.black,
          fontSize: 18,

        ),
        decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(40)),
            focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),

                borderSide: const BorderSide(color: kSecondry_Color)),
            disabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),

                borderSide: const BorderSide(color: Colors.black)),
            hintText: widget.hintText,
            hintStyle:   RobotoHintStyle,
            labelStyle: RobotoHintStyle.copyWith(
                color: kSecondry_Color,
                fontWeight: FontWeight.bold
            ),
            label:   Text(
              widget.labelText,
            ),
            prefixIcon: GestureDetector(
              child: Container
                (margin: const EdgeInsets.only(left: 30, right: 7),
                  child:  Icon(
                    widget.preIcon,
                    size: 26,
                    color: kPrimary_Color,
                  )),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            suffixIcon: Visibility(
              visible: widget.isPassword,
              child: Container(
                  margin: const EdgeInsets.only(right: 30, left: 7),
                  child:  IconButton(
                    icon: Icon(
                      widget.isPassword &&!PasswordShown ? widget.suffexIcon : Icons.visibility_off,
                      size: 28,
                      color: kPrimary_Color,
                    ),
                    onPressed: (){
                      PasswordShown = !PasswordShown;
                      setState(() {

                      });
                    },

                  )),
            )));
  }
}
