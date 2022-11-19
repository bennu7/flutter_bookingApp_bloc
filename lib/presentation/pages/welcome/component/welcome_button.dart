import 'package:bookingapp_bloc/config/theme/app_dimen.dart';
import 'package:bookingapp_bloc/presentation/widget/button/primary_button.dart';
import 'package:bookingapp_bloc/presentation/widget/button/secondary_button.dart';
import 'package:bookingapp_bloc/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.w,
      ),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              height: 40.0.h,
              onPressed: () {},
              text: "Explore",
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              height: 40.0.h,
              onPressed: () {},
              text: "Login",
            ),
          ),
        ],
      ),
    );
  }
}
