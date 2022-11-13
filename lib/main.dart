import 'package:bookingapp_bloc/presentation/widget/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'config/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: PrimaryButton(
            onPressed: () {},
            width: 120,
            type: PrimaryButtonType.type3,
          ),
        ),
      ),
    );
  }
}
