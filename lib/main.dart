import 'package:bookingapp_bloc/data/src/img_string.dart';
import 'package:bookingapp_bloc/data/src/onboarding/onboarding_view.dart';
import 'package:bookingapp_bloc/presentation/widget/button/primary_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home:const OnboardingPage(),
    );
  }
}
