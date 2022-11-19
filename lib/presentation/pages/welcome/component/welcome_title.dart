import 'package:bookingapp_bloc/config/config.dart';
import 'package:bookingapp_bloc/config/theme/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Find the Perfect Roommate',
            style: AppFont.h3,
          ),
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.paragraphMedium,
          )
        ],
      ),
    );
  }
}
