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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          /*use ListView 3l4an law fe akter mn FildText n3rf n3ml scroll  */
          children: [
            Image.asset('assets/page-1/images/ilustraitor.png'),
            const Spacer(flex: 1),
            const SizedBox(
              width: 237,
              height: 36,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontFamily: 'Agency FB',
                  fontWeight: FontWeight.w700,
                  height: 0.01,
                ),
              ),
            ),
            const SizedBox(
              width: 335,
              height: 57,
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
            const Spacer(
              flex: 2,
            ),
            // CutomInpuDataText(
            //   text: 'Full Name',
            // ),
            // const Row(
            //   children: [
            //     Text(
            //       'Full Name',
            //     ),
            //   ],
            // ),
            const Gap(9),

            CustomFormTextField(
              text: 'Full Name', containerText: "Nader Hany Btats",
              // hintText: "Nader Hany Btats",
            ),
            const Gap(20),
            CustomFormTextField(
                text: 'Emile', containerText: "KarimElomda@gmail.com"
                //hintText: "KarimElomda@gmail.com",
                ),
            const Gap(20),
            CustomFormTextField(text: 'Phone', containerText: "01270113144"
                //hintText: "01270113144",
                ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //CheckBox Code
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
                  ' i agree to the terms of service and  ',
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
                  ' privcy police',
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
            CustomButton(
              text: 'Sgin Up',
            ),

            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have account ?',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '  Sign in',
                    style: TextStyle(color: Color(0xff5D97FF)),
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
