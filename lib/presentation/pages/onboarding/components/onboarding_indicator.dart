import 'package:bookingapp_bloc/config/config.dart';
import 'package:bookingapp_bloc/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_cubit.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            growable: false,
            cubit.state.onboardingList.length,
            (index) {
              print("index: $index");
              print("cubit.state.currentIndex: ${cubit.state.currentIndex}");
              return cubit.state.currentIndex == index
                  ? _activeIndicator(index)
                  : _inactiveIndicator(index);
            },
          ),
        );
      },
    );
  }

  Widget _activeIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      width: 16,
      height: 6,
      decoration: BoxDecoration(
        color: AppColor.accentPink,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _inactiveIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: AppColor.ink03,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
