import 'package:flutter/material.dart';

class CutomInpuDataText extends StatelessWidget {
  CutomInpuDataText({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 325,
            child: Text(
              text!,
              style: const TextStyle(
                color: Color(0xFFF8A00E),
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
