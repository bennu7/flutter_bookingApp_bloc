import 'package:bookingapp_bloc/config/config.dart';
import 'package:bookingapp_bloc/utils/extension/extension.dart';
import 'package:bookingapp_bloc/presentation/pages/onboarding/onboarding_state.dart';
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
              style: AppFont.h3,
              textAlign: TextAlign.center,
            ),
            8.0.height,
            Text(
                cubit.state.onboardingList[cubit.state.currentIndex].description
                    .toString(),
                textAlign: TextAlign.center,
                style: AppFont.paragraphMedium),
          ],
        );
      },
    );
  }
}
