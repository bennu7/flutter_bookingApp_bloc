import 'package:bookingapp_bloc/config/theme/theme.dart';
import 'package:bookingapp_bloc/presentation/widget/app_input_text.dart';
import 'package:bookingapp_bloc/presentation/widget/primary_button.dart';
import 'package:bookingapp_bloc/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppFont.h3,
          ),
          16.0.height,
          const AppInputText(
            label: "Login",
            isPassword: false,
          ),
          16.0.height,
          const AppInputText(
            label: "Password",
            isPassword: true,
          ),
          16.0.height,
          PrimaryButton(
            type: PrimaryButtonType.type3,
            onPressed: () {},
            text: "Login",
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
