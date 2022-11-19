import 'package:bookingapp_bloc/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInputText extends StatefulWidget {
  const AppInputText(
      {super.key,
      required,
      this.controller,
      required this.label,
      required this.isPassword});

  final TextEditingController? controller;
  final String label;
  final bool isPassword;

  @override
  State<AppInputText> createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hintText: widget.label,
        hintStyle: AppFont.componentMedium,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            color: AppColor.ink03,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 16.h,
        ),
      ),
    );
  }
}
