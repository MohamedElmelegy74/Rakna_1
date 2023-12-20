import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rakna/constants.dart';

class TextFieldOTP extends StatelessWidget {
  const TextFieldOTP({
    Key? key,
    required this.first,
    required this.last,
    required this.controller,
  });
  final TextEditingController controller;
  final bool first;
  final bool last;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty && last == false) {
          FocusScope.of(context).nextFocus();
        } else if (value.isEmpty && first == false) {
          FocusScope.of(context).previousFocus();
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xff454545),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: kPrimaryColorText),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: kPrimaryColorText)),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width / 6,
          maxHeight: MediaQuery.sizeOf(context).width / 6,
        ),
        hintText: '0',
      ),
      style: const TextStyle(fontSize: 25),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
