import 'package:bookingapp_bloc/config/config.dart';
import 'package:bookingapp_bloc/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Forgot password?  ",
                style: AppFont.paragraphSmall.copyWith(
                  color: AppColor.ink02,
                ),
              ),
              TextSpan(
                text: " Get password",
                style: AppFont.paragraphSmallBold.copyWith(
                  color: Colors.black,
                ),
                mouseCursor: SystemMouseCursors.click,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => print("Tap meee"),
                onEnter: (event) => print('onEnter'),
              ),
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Do you have an account?  ",
                style: AppFont.paragraphSmall.copyWith(
                  color: AppColor.ink02,
                ),
              ),
              TextSpan(
                text: " Create new",
                style: AppFont.paragraphSmallBold.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
