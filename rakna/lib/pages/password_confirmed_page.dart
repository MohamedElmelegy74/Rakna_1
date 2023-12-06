import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_button.dart';

class PasswordConfirmedPage extends StatelessWidget {
  const PasswordConfirmedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ), //spacerTop
            Container(
              width: 257.15,
              height: 237.75,
              child: Image.asset(
                'assets/page-1/images/star.png',
              ),
            ),
            Gap(90), //Gap Between Imgae And PasswordText
            const Text(
              'Password Confirmed',
              style: TextStyle(
                color: Color(0xFFF8A00E),
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.04,
                letterSpacing: -0.30,
              ),
            ),
            Gap(50), //Gap Between PasswordText And Succesfully Text
            const SizedBox(
              width: 257,
              child: Text(
                'Your password has been confirmed succesfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Gap(100),
            CustomButton(
              text: 'Back to login',
            ),
            Spacer(
              flex: 2,
            ), //spacerbottom
          ],
        ),
      ),
    );
  }
}
