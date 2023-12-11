import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_login_sginup_button.dart';
import 'package:rakna/widgets/custom_textfield.dart';
import 'package:rakna/widgets/custom_input_data_text.dart';

class SginUp extends StatefulWidget {
  const SginUp({Key? key}) : super(key: key);
  static String id = 'RegisterPage';

  @override
  _SginUpState createState() => _SginUpState();
}

class _SginUpState extends State<SginUp> {
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Positioned(
            top: -68,
            right: -150,
            child: Image.asset(
              'assets/page-1/images/ilustraitor.png',
              height: 300,
              width: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
                const Gap(80),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    width: 237,
                    height: 36,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontFamily: 'AgencyFB',
                        fontWeight: FontWeight.w700,
                        height: 0.01,
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'create an account to continue!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Actor',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                ),
                const Gap(30),
                CutomInpuDataText(
                  text: 'Full Name',
                ),
                CustomFormTextField(
                  hintText: "Nader Hany Btats",
                ),
                const Gap(15),
                CutomInpuDataText(
                  text: 'Email',
                ),
                CustomFormTextField(
                  hintText: "KarimElomda@gmail.com",
                ),
                const Gap(15),
                CutomInpuDataText(
                  text: 'Phone Number',
                ),
                CustomFormTextField(
                  hintText: "01270113144",
                ),
                const Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: agreeToTerms,
                      onChanged: (value) {
                        setState(
                          () {
                            agreeToTerms = value!;
                          },
                        );
                      },
                    ),
                    const Text(
                      ' I agree to the terms of service and  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Bebas',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          'PrivacyPoliceyPage',
                        );
                      },
                      child: const Text(
                        ' privacy policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4D97F6),
                          fontSize: 15,
                          fontFamily: 'Bebas',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                CustomButton(
                  text: 'Sign Up',
                  onTap: () {
                    if (agreeToTerms) {
                      // Add your sign-up logic here
                      print('User agreed to terms. Signing up...');
                    } else {
                      // Show an alert or handle the case where terms are not agreed
                      print('User must agree to terms before signing up.');
                    }
                  },
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already Have Account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inria Sans',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        ' Sign In.',
                        style: TextStyle(
                          color: Color(0xFF5C96FF),
                          fontSize: 16,
                          fontFamily: 'Inria Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.09,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
