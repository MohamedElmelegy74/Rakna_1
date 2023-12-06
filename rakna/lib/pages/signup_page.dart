import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rakna/constants.dart';
import 'package:rakna/widgets/custom_button.dart';
import 'package:rakna/widgets/custom_textfield.dart';
import 'package:rakna/widgets/cutom_input_data_text.dart';

class SginUp extends StatelessWidget {
  SginUp({Key? key}) : super(key: key);
  static String id = 'RegisterPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        //To be able to place the image on the UI.
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
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
                const Gap(115),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: 237,
                    height: 36,
                    child: const Text(
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
                const Gap(25),
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
                const Gap(35),
                CutomInpuDataText(
                  text: 'Full Name',
                ),
                CustomFormTextField(
                  hintText: "Nader Hany Btats",
                ),
                const Gap(20),
                CutomInpuDataText(
                  text: 'Email',
                ),
                CustomFormTextField(
                  hintText: "KarimElomda@gmail.com",
                ),
                const Gap(20),
                CutomInpuDataText(
                  text: 'Phone Number',
                ),
                CustomFormTextField(
                  hintText: "01270113144",
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 23.50,
                      height: 23.41,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
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
                    const Text(
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
                  ],
                ),
                const Gap(30),
                CustomButton(
                  text: 'Sign Up',
                ),
                const Gap(60),
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
                        ))
                  ],
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
