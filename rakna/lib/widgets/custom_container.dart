import 'package:flutter/material.dart';

class containerIcons extends StatelessWidget {
  const containerIcons({
    required this.asset,
    required this.height,
    required this.width,
    required this.decorationColor,
    required this.borderColor,
  });
  final String asset;
  final double height;
  final double width;
  final Color decorationColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: decorationColor,
        border: Border.all(
          color: borderColor, // لون الحدود
          width: 2,
          // سماكة الحدود
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Image.asset(asset),
      ),
    );
  }
}
