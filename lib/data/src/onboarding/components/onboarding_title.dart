import 'package:bookingapp_bloc/config/config.dart';
import 'package:bookingapp_bloc/data/model/onboarding/onboarding.dart';
import 'package:bookingapp_bloc/data/src/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_cubit.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      bloc: cubit,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cubit.state.onboardingList[cubit.state.currentIndex].title
                  .toString(),
              style: AppFont.heading3,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
                cubit.state.onboardingList[cubit.state.currentIndex].description
                    .toString(),
                textAlign: TextAlign.center,
                style: AppFont.paragraphMedium
            ),
          ],
        );
      },
    );
  }
}
