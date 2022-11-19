import 'package:bookingapp_bloc/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/component.dart';
import 'onboarding_cubit.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnboardingCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              const OnboardingImage(),
              const OnboardingTitle(),
              54.0.height,
              const OnboardingIndicator(),
              53.0.height,
              const OnboardingButton(),
              60.0.height,
            ],
          ),
        ),
      ),
    );
  }
}
