import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({
    super.key,
    this.onChanged,
    this.hintText,
    this.obscureText = false,
    this.icons,
    this.icons2,
    this.textInputAction,
    this.onFieldSubmitted,
  });

  Function(String)? onChanged;
  String? hintText;
  var icons;
  var icons2;
  bool? obscureText;
  TextInputAction? textInputAction;
  ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        obscureText: obscureText!,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        validator: (data) {
          if (data!.isEmpty) {
            return "Field is required";
          }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFF434343),
          suffixIcon: icons2,
          prefixIcon: icons,
          hintStyle: const TextStyle(
            color: Color(0xFF727272),
            fontSize: 13,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0.12,
          ),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF8A00E),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF8A00E),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
