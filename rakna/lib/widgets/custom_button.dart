import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 50),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       border: Border.all(
      //         color: Color(0xffF8A00E), // لون الحدود
      //         width: 2.0, // سماكة الحدود
      //       ),
      //       color: Color(0xff434343),
      //       borderRadius: BorderRadius.circular(25),
      //     ),
      //     width: width,
      //     height: 60,
      //     child: Center(
      //       child: Text(
      //         text,
      //         style: const TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //     ),
      //   ),
      // ),
      child: Column(
        children: [
          Container(
            width: 269,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF4B4A4A),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFF8A00E)),
                borderRadius: BorderRadius.circular(21),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x30F8A00E),
                  blurRadius: 19.80,
                  offset: Offset(0, 5),
                  spreadRadius: -2,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        '$text',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFFEBE7E7),
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1,
                        ),
                      ),
                    ),
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
