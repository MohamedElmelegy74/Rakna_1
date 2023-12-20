import 'package:flutter/material.dart';

import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_button.dart';
import 'package:rakna/widgets/custom_textfield.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);
  static String id = 'ChangePassword';

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  String? password;
  String? confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/page-1/images/img-6tC.png',
                  height: 250,
                  width: 250,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  children: [
                    Text(
                      'Enter Password',
                      style: TextStyle(
                        color: kPrimaryColorText,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Please type something you remember',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: kPrimaryColorText,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    password = data;
                  },
                  hintText: 'Must be 8 Character',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(
                          color: kPrimaryColorText,
                          fontSize: 15,
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
                  hintText: 'Repeat Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(text: 'Confirm Password')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
