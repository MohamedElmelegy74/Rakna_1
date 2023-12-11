import 'package:flutter/material.dart';

class CustomSoldBtn extends StatelessWidget {
  const CustomSoldBtn({
    Key? key,
    this.onTap,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: ShapeDecoration(
          color: const Color(0xFFF8A00E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0.08,
            ),
          ),
        ),
      ),
    );
  }
}
