import 'package:smah/core/Assets/Assets.dart';

class OnboardingModel {
  final String title;
  final String image;
  final String description;

  const OnboardingModel(
      {required this.image, required this.title, required this.description});
}

List<OnboardingModel> onboardingData = const [
  OnboardingModel(
      image: readingLottie, title: 'title', description: 'description'),
  OnboardingModel(
      image: doctorLottie, title: 'title', description: 'description'),
  OnboardingModel(
      image: searchingLottie, title: 'title', description: 'description'),
];
