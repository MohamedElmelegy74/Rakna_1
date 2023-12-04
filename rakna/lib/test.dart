
// import 'package:flutter/material.dart';
// import 'package:myapp/Screens/const.dart';
// import 'package:myapp/widgets/custom_button.dart';
// import 'package:myapp/widgets/custom_container.dart';
// import 'package:myapp/widgets/custom_text_field.dart';
// import 'package:myapp/widgets/stack.dart';
// import 'package:rakna/widgets/custom_button.dart';
// import 'package:rakna/widgets/custom_textfield.dart';

// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});
//   static String id = 'SignInPage.id';
//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   String? email;

//   String? password;

//   bool isLoading = false;

//   bool _obscureText = true;
//   GlobalKey<FormState> formKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff2b2b2b),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Form(
//           key: formKey,
//           child: ListView(
//             children: [
//               const SizedBox(
//                 height: 20,
//               ),
//               Image.asset(
//                 kLogin,
//                 height: 100,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 50,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(left: 13),
//                 child: Text(
//                   'Email address',
//                   style: TextStyle(color: Color(0xff855726)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 2,
//               ),
//               CustomFormTextField(
//                 onChanged: (data) {
//                   email = data;
//                 },
//                 hintText: 'Email',
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(left: 13),
//                 child: Text(
//                   'Password',
//                   style: TextStyle(color: Color(0xff855726)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 2,
//               ),
//               CustomFormTextField(
//                 icons2: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _obscureText = !_obscureText;
//                     });
//                   },
//                   child: Icon(
//                     _obscureText ? Icons.visibility : Icons.visibility_off,
//                     color: Color(0xff855726),
//                   ),
//                 ),
//                 obscureText: _obscureText,
//                 onChanged: (data) {
//                   password = data;
//                 },
//                 hintText: 'Password',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Forgot Password?',
//                       style: TextStyle(color: Color(0xff855726), fontSize: 15),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               CustomButton(text: 'Sign In', onTap: () {}),
//               const SizedBox(
//                 height: 10,
//                 width: 50,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Sign in with',
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 93, 93, 93),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   containerIcons(
//                     asset: 'assets/page-1/images/vector.png',
//                   ),
//                   SizedBox(
//                     width: 16,
//                   ),
//                   containerIcons(
//                     asset: 'assets/page-1/images/apple.png',
//                   ),
//                   SizedBox(
//                     width: 16,
//                   ),
//                   containerIcons(
//                     asset: 'assets/page-1/images/google.png',
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'dont have an account ?',
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {},
//                     child: const Text(
//                       '  Register',
//                       style: TextStyle(
//                         color: Colors.blue,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }