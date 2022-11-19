import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_cubit.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Expanded(
      child: PageView.builder(
        itemCount: cubit.state.onboardingList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Image.asset(
            cubit.state.onboardingList[index].image.toString(),
          );
        },
        onPageChanged: (index) {
          cubit.goTo(index);
        },
      ),
    );
  }
}
