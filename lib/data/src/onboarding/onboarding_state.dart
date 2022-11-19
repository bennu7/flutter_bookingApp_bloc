import 'package:bookingapp_bloc/data/model/onboarding/onboarding.dart';
import 'package:bookingapp_bloc/data/src/img_string.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
      title: 'Find your best\nholiday destination',
      description:
          'We provide you with the best\nholiday destination that you\ncan find',
      image: ImgString.standing,
    ),
    Onboarding(
      title: 'Your Roommate Finder',
      description:
          "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
      image: ImgString.standing1,
    ),
    Onboarding(
      title: 'Find Your Match!',
      description:
          "Find Your Match! We've helped millions across the nation find their perfect match... and you're next!",
      image: ImgString.standing2,
    ),
  ];

  // * untuk menandakan posisi dari onboarding
  int currentIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
