import 'package:bookingapp_bloc/config/config.dart';
import 'package:bookingapp_bloc/presentation/pages/welcome/login/components/login_footer.dart';
import 'package:bookingapp_bloc/presentation/pages/welcome/login/components/login_form.dart';
import 'package:bookingapp_bloc/presentation/pages/welcome/login/components/login_image.dart';
import 'package:bookingapp_bloc/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_cubit.dart';
import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      // * untuk mengatasi form bisa terliat di atas keyboard smartphone resizeToAvoidBottomInset: true & tambahkan SingleChildScrollView()
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.ink06,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LoginImage(),
              48.0.height,
              const LoginForm(),
              16.0.height,
              const LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
