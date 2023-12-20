import 'package:flutter/material.dart';

import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_button.dart';
import 'package:rakna/widgets/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  static String id = 'ForgotPassword';
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String? password;
  String? confirmPassword;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/page-1/images/img.png',
                    height: 250,
                    width: 250,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: kPrimaryColorText,
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Dont worry! it happens. Please enter the email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'associated with your account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Email Address',
                          style: TextStyle(
                            color: kPrimaryColorText,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomFormTextField(
                    onChanged: (data) {
                      password = data;
                    },
                    hintText: 'Enter your email address',
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomButton(
                    text: 'Send Code',
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
