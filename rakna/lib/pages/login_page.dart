import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:rakna/constants.dart';
import 'package:rakna/pages/forgot_password.dart';
import 'package:rakna/widgets/custom_button.dart';
import 'package:rakna/widgets/custom_container.dart';
import 'package:rakna/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = 'LoginPag';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;
  bool isLoading = false;
  bool _obscureText = true;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b2b2b),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              right: -500,
              top: -300,
              bottom: 530,
              child: Image.asset(
                'assets/page-1/images/subtract.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(1), // إضافة Gap هنا
                    const SizedBox(
                      height: 130,
                    ),
                    Center(
                      child: Image.asset(
                        kLogin,
                        height: 100,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        'Email address',
                        style:
                            TextStyle(color: kPrimaryColorText, fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    CustomFormTextField(
                      onChanged: (data) {
                        email = data;
                      },
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        'Password',
                        style:
                            TextStyle(color: kPrimaryColorText, fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    CustomFormTextField(
                      icons2: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: kPrimaryColorText,
                        ),
                      ),
                      obscureText: _obscureText,
                      onChanged: (data) {
                        password = data;
                      },
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                ForgotPassword.id,
                              );
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: kPrimaryColorText, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Sign In',
                      onTap: () {
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                    const SizedBox(
                      height: 10,
                      width: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in with',
                          style: TextStyle(
                            color: Color.fromARGB(255, 93, 93, 93),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        containerIcons(
                          height: 60,
                          width: 60,
                          decorationColor: Color(0xff454545),
                          borderColor: kPrimaryColorText,
                          asset: 'assets/page-1/images/vector.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        containerIcons(
                          height: 60,
                          width: 60,
                          decorationColor: Color(0xff454545),
                          borderColor: kPrimaryColorText,
                          asset: 'assets/page-1/images/apple.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        containerIcons(
                          height: 60,
                          width: 60,
                          decorationColor: Color(0xff454545),
                          borderColor: kPrimaryColorText,
                          asset: 'assets/page-1/images/google.png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'dont have an account ?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'SginUp');
                          },
                          child: const Text(
                            '  Sign Up',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
