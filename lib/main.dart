import 'package:bookingapp_bloc/data/src/img_string.dart';
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
      theme: ThemeData(
        // fontFamily: GoogleFonts.poppins().fontFamily,
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Booking App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: PrimaryButton(
                onPressed: () {},
                width: 120,
                type: PrimaryButtonType.type3,
              ),
            ),
            Image.asset(ImgString.abstract0),
          ],
        ),
      ),
    );
  }
}
