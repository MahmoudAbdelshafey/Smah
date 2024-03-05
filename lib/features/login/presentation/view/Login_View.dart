import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smah/core/Assets/Assets.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/GetHelper/GetHelper.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/core/mainWidgets/Custom%20Button.dart';
import 'package:smah/features/CreateNewPassword/Presentation/view/ResetPassword.dart';
import 'package:smah/features/ResetPassword/Presentation/view/CreateNewPassword.dart';
import 'package:smah/features/SignUp/Presentation/view/SignUp.dart';

import '../../../../core/mainWidgets/CustomTextFormField.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {


  final _formKey = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    EmailController.dispose();
    PasswordController.dispose();
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
                  const Row(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.1 ,),
                  Image.asset(
                    LogoIcon,
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.08 ,),

                  Text(
                    'Login',
                    style: largeTextStyleEn.copyWith(
                      color: const Color(0xff2D2D3A),
                    ),
                  ),
                   SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                   CustomTextFormField(labelText: 'Email', hintText: 'Mahmoud@gmail.com', preIcon: Icons.email,MyController: EmailController, ),
                  const SizedBox(height: 30,),
                   CustomTextFormField(labelText: 'Password', hintText: '••••••••', suffexIcon: Icons.remove_red_eye, isPassword: true, MyController: PasswordController),

                  const SizedBox(height: 30,),
                   CustomButton(Title: 'Login',BtnFun: (){

                     if(_formKey.currentState!.validate()){

                     }

                   }),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  TextButton(onPressed: (){
                    Get.to(
                       const ResetPasswordView(),
                        transition: Transition.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 600));
                  }, child: Text('Forget Your Password?', style: RobotoButtonChildStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an acceount ?',style: RobotoButtonChildStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),),
                      TextButton(onPressed: (){

                        Get.to(
                            SignUpView(),
                            transition: Transition.rightToLeftWithFade,
                            duration: const Duration(milliseconds: 600));

                      },

                          child: Text('Sign Up', style: RobotoButtonChildStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w800
                      ),)),

                    ],
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
