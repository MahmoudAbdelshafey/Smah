import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/core/mainWidgets/CustomTextFormField.dart';

import '../../../../core/Assets/Assets.dart';
import '../../../../core/mainWidgets/Custom Button.dart';
import '../../../login/presentation/view/Login_View.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final FullNameController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    EmailController.dispose();
    FullNameController.dispose();
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
                  'assets/images/SignupBackGround.jpg',
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
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'Sign Up',
                    style: largeTextStyleEn.copyWith(
                      color: const Color(0xff2D2D3A),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                   CustomTextFormField(
                    labelText: 'Full Name',
                    hintText: 'Ahmed Mohamed',
                    preIcon: Icons.email,
                    MyController: FullNameController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   CustomTextFormField(
                    labelText: 'Email',
                    hintText: 'Mahmoud@gmail.com',
                    preIcon: Icons.email,
                     MyController: EmailController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   CustomTextFormField(
                     MyController: PasswordController,
                      labelText: 'Password',
                      hintText: '••••••••',
                      suffexIcon: Icons.remove_red_eye,
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
                  const SizedBox(
                    height: 30,
                  ),
                   CustomButton(Title: 'SignUp',BtnFun: (){

                     if(_formKey.currentState!.validate()){

                     }
                   }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an acceount ?',
                        style: RobotoButtonChildStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.off( const LoginView(),
                                transition: Transition.rightToLeftWithFade,
                                duration: const Duration(milliseconds: 600));
                          },
                          child: Text(
                            'Login',
                            style: RobotoButtonChildStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          )),
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
