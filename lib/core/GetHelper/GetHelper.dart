import 'package:get/get.dart';


class GetHelper{

  static void FadeTransition(  targetScreen()){
    Get.offAll( targetScreen(),
        transition: Transition.rightToLeftWithFade,
        duration: const Duration(milliseconds: 600));
  }
  static void PushFadeTransition(targetScreen()){
    Get.to(
        targetScreen(),
        transition: Transition.rightToLeftWithFade,
        duration: const Duration(milliseconds: 600));

  }

}