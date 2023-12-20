import 'package:flutter/material.dart';

import 'package:rakna/constants.dart';
import 'package:rakna/widgets/controller.dart';
import 'package:rakna/widgets/custom_button.dart';
import 'package:rakna/widgets/custom_filed_container.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});
  @override
  State<OtpPage> createState() => _OtpPageState();
  static String id = 'OtpPage';
}

class _OtpPageState extends State<OtpPage> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    'assets/page-1/images/illustration.png',
                    height: 340,
                  ),
                  const Text(
                    'OTP VERIFICATION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Enter the OTP sent to',
                          style: TextStyle(
                            color: kPrimaryColorText,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          ' +201019155672',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFieldOTP(
                        controller: c1,
                        first: true,
                        last: false,
                      ),
                      TextFieldOTP(
                        controller: c2,
                        first: false,
                        last: false,
                      ),
                      TextFieldOTP(
                        controller: c3,
                        first: false,
                        last: false,
                      ),
                      TextFieldOTP(
                        controller: c4,
                        first: false,
                        last: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Dont receive code ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          ' Re-send',
                          style: TextStyle(
                            color: kPrimaryColorText,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomButton(
                    text: 'Submit',
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
