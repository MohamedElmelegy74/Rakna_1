import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_button.dart';
import 'package:rakna/widgets/custom_privacy_text.dart';

class PrivacyPoliceyPage extends StatelessWidget {
  const PrivacyPoliceyPage({super.key});

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
            const Expanded(
              child: Spacer(
                flex: 2,
              ),
            ), //spacerTop
            const Text(
              'privcy policey',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFF8A00E),
                fontSize: 48,
                fontFamily: 'Gilroy-Black',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(30),

            const CustomPrivacyText(),
            const Spacer(
              flex: 3,
            ),
            CustomButton(
              text: 'Back to login',
            ),
            const Expanded(
              child: Spacer(
                flex: 1,
              ),
            ), //spacerbottom
          ],
        ),
      ),
    );
  }
}
