import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_privacy_text.dart';
import 'package:rakna/widgets/custom_sold_btn.dart';

class PrivacyPoliceyPage extends StatelessWidget {
  const PrivacyPoliceyPage({super.key});
  static String id = 'PrivacyPoliceyPage';

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
            GestureDetector(
              child: const Text(
                'privcy policey',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF8A00E),
                  fontSize: 48,
                  fontFamily: 'Gilroy-Black',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Gap(30),

            const CustomPrivacyText(),
            const Spacer(
              flex: 3,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CustomSoldBtn(
                  text: 'Back ',
                  width: 120,
                  height: 39,
                )),
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
