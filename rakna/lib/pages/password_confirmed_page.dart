import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_sold_btn.dart';

class PasswordConfirmedPage extends StatelessWidget {
  const PasswordConfirmedPage({super.key});
  static String id = 'PasswordConfirmedPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ), //spacerTop
            SizedBox(
              width: 257.15,
              height: 237.75,
              child: Image.asset(
                'assets/page-1/images/star.png',
              ),
            ),
            const Gap(90), //Gap Between Imgae And PasswordText
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
            const Gap(50), //Gap Between PasswordText And Succesfully Text
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
            const Gap(100),
            const CustomSoldBtn(
              text: 'Back to login',
              width: 289,
              height: 46,
            ),

            const Spacer(
              flex: 2,
            ), //spacerbottom
          ],
        ),
      ),
    );
  }
}
