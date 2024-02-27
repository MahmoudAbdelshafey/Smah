import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smah/core/Constants/Constants.dart';
import 'package:smah/core/Styles/Styles.dart';
import 'package:smah/features/OnBoarding/data/Onboarding_Model.dart';
import 'package:smah/features/OnBoarding/presentation/view/widgets/getStartedButton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: isLastPage
                ? const GetStartedButton()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () =>
                            controller.jumpToPage(onboardingData.length - 1),
                        child: const Text('Skip'),
                      ),
                      SmoothPageIndicator(
                        controller: controller,
                        count: onboardingData.length,
                        onDotClicked: (index) => controller.animateToPage(index,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn),
                        effect: const WormEffect(
                          dotHeight: 12,
                          dotWidth: 12,
                          activeDotColor: kSecondry_Color,
                        ),
                      ),
                      TextButton(
                        onPressed: () => controller.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn),
                        child: const Text('Next'),
                      ),
                    ],
                  )),
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: PageView.builder(
            onPageChanged: (index) =>
                setState(() => isLastPage = onboardingData.length - 1 == index),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 400,
                      child: Lottie.asset(onboardingData[index].image,
                          width: double.infinity)),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(onboardingData[index].title, style: largeTextStyleEn),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(onboardingData[index].description,
                      textAlign: TextAlign.center, style: descriptionTextStyle),
                ],
              );
            },
            itemCount: onboardingData.length,
            controller: controller,
          ),
        ));
  }
}
