import 'package:bookingapp_bloc/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  // *tambahkan opsi parameter type untuk diberikan nilai default nya = PrimaryButtonType.type1
  const PrimaryButton({
    Key? key,
    this.type = PrimaryButtonType.type1,
    required this.onPressed,
    this.text = "Download",
    this.height = 24,
    this.width = 78,
  }) : super(key: key);

  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1(context)
        : type == PrimaryButtonType.type2
            ? _type2(context)
            : _type3(context);
  }

  Widget _type1(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFont.componentSmall.copyWith(
            color: AppColor.ink06,
          ),
        ),
      ),
    );
  }

  Widget _type2(BuildContext context) {
    return SizedBox(
      width: width,
      height: 32.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFont.componentMediumBold.copyWith(
            color: AppColor.ink06,
          ),
        ),
      ),
    );
  }

  Widget _type3(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: 40.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFont.componentLarge.copyWith(
            color: AppColor.ink06,
          ),
        ),
      ),
    );
  }
}

// *sebagai penanda bahwa button ini memiliki 3 type
enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
