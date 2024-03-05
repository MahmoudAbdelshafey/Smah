import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smah/core/Assets/Assets.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/core/mainWidgets/Custom%20Button.dart';
import 'package:smah/features/Otp/Presentation/view/Otp.dart';
import 'package:smah/features/login/presentation/view/Login_View.dart';
import 'package:smah/core/mainWidgets/CustomTextFormField.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final _formKey = GlobalKey<FormState>();

  final PasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    PasswordController.dispose();
    ConfirmPasswordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/LoginBackGround.png',
                )),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: Container(

                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                  Image.asset(
                    LogoIcon,
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Text(
                    'Create Password',
                    style: largeTextStyleEn.copyWith(
                      color: const Color(0xff2D2D3A),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Create a new Password and please never share it with anyone for safe.',
                      textAlign: TextAlign.center,
                      style: RobotoButtonChildStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                   CustomTextFormField(
                      labelText: 'New Password',
                      hintText: '••••••••',
                      suffexIcon: Icons.remove_red_eye,
                      MyController: PasswordController,
                      isPassword: true),
                  const SizedBox(
                    height: 30,
                  ),
                   CustomTextFormField(
                     MyController: ConfirmPasswordController,
                      labelText: 'Confirm Password',
                      hintText: '••••••••',
                      suffexIcon: Icons.remove_red_eye,
                      isPassword: true),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),

                   CustomButton(Title: 'Update Password',BtnFun: (){

                     if(_formKey.currentState!.validate()){
                       Get.to(
                           const LoginView(),
                           transition: Transition.rightToLeftWithFade,
                           duration: const Duration(milliseconds: 600));
                     }



    }
                   ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
