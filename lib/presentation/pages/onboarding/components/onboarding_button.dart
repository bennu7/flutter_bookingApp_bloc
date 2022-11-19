import 'package:bookingapp_bloc/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:bookingapp_bloc/utils/extension/extension.dart';
import 'package:bookingapp_bloc/presentation/widget/button/primary_button.dart';
import 'package:bookingapp_bloc/presentation/widget/button/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          onPressed: cubit.skip,
          text: "SKIP",
          width: 147.5,
          height: 56,
        ),
        16.0.width,
        PrimaryButton(
          onPressed: cubit.next,
          text: "NEXT",
          width: 147.5,
          height: 56,
        ),
      ],
    );
  }
}
