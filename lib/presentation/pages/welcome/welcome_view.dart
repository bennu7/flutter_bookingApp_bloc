import 'package:bookingapp_bloc/config/theme/theme.dart';
import 'package:bookingapp_bloc/presentation/pages/welcome/components/welcome_button.dart';
import 'package:bookingapp_bloc/presentation/pages/welcome/components/welcome_image.dart';
import 'package:bookingapp_bloc/presentation/pages/welcome/components/welcome_title.dart';
import 'package:bookingapp_bloc/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'welcome_cubit.dart';
import 'welcome_state.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WelcomeCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.accentBlue,
      body: SafeArea(
        child: Column(
          children: [
            const WelcomeTitle(),
            const WelcomeButton(),
            64.0.height,
            const WelcomeImage(),
          ],
        ),
      ),
    );
  }
}
