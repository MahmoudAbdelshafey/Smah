import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smah/core/Assets/Assets.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/core/mainWidgets/Custom%20Button.dart';
import 'package:smah/features/ResetPassword/Presentation/view/CreateNewPassword.dart';
import 'package:smah/features/SignUp/Presentation/view/SignUp.dart';
import 'package:smah/features/login/presentation/view/Login_View.dart';
import 'package:smah/core/mainWidgets/CustomTextFormField.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _formKey = GlobalKey<FormState>();
  final OTPController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    OTPController.dispose();

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
                    'Verification Code',
                    style: largeTextStyleEn.copyWith(
                      color: const Color(0xff2D2D3A),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Please type the verification code sent to \n youremail@gmail.com ',
                      textAlign: TextAlign.center,
                      style: RobotoButtonChildStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  CustomTextFormField(
                    labelText: 'OTP',
MyController: OTPController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                   CustomButton(Title: 'Check',BtnFun: (){

                     if(_formKey.currentState!.validate()){
                       Get.to(
                           const CreateNewPassword(),
                           transition: Transition.rightToLeftWithFade,
                           duration: const Duration(milliseconds: 600));
                     }





                   }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('I don’t receive a code! ',style: RobotoButtonChildStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),),
                      TextButton(onPressed: (){


                      },

                          child: Text('Resend Code', style: RobotoButtonChildStyle.copyWith(
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
