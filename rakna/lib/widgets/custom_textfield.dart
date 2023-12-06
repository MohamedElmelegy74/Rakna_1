// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class CustomFormTextField extends StatelessWidget {
//   CustomFormTextField(
//       {super.key,
//       this.onChanged,
//       this.hintText,
//       this.obscureText = false,
//       this.icons,
//       this.icons2});
//   Function(String)? onChanged;
//   String? hintText;
//   var icons;
//   var icons2;
//   bool? obscureText;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: TextFormField(
//         obscureText: obscureText!,
//         validator: (data) {
//           if (data!.isEmpty) {
//             return "field is required";
//           }
//         },
//         onChanged: onChanged,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: const Color(0xFF434343),
//           suffixIcon: icons2,
//           prefixIcon: icons,
//           hintStyle: const TextStyle(
//             color: Color(0xFF727272),
//             fontSize: 13,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w500,
//             height: 0.12,
//           ),
//           hintText: hintText,
//           enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Color(0xffF8A00E),
//             ),
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           border: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Color(0xffF8A00E),
//             ),
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // class CustomFormTextField extends StatelessWidget {
// //   CustomFormTextField({super.key, this.text, this.containerText});
// //   String? containerText;
// //   String? text;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 325,
// //       height: 81,
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           SizedBox(
// //             width: 325,
// //             child: Text(
// //               '$text',
// //               style: TextStyle(
// //                 color: Color(0xFFF8A00E),
// //                 fontSize: 13,
// //                 fontFamily: 'Inter',
// //                 fontWeight: FontWeight.w500,
// //                 height: 0.12,
// //               ),
// //             ),
// //           ),
// //           Gap(10),
// //           Container(
// //             width: double.infinity,
// //             height: 54,
// //             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
// //             decoration: ShapeDecoration(
// //               color: Color(0xFF424242),
// //               shape: RoundedRectangleBorder(
// //                 side: BorderSide(width: 1, color: Color(0xFFF8A00E)),
// //                 borderRadius: BorderRadius.circular(10),
// //               ),
// //             ),
// //             child: Row(
// //               mainAxisSize: MainAxisSize.min,
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     height: 20,
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.min,
// //                       mainAxisAlignment: MainAxisAlignment.start,
// //                       crossAxisAlignment: CrossAxisAlignment.center,
// //                       children: [
// //                         Expanded(
// //                           child: Container(
// //                             height: 20,
// //                             child: Row(
// //                               mainAxisSize: MainAxisSize.min,
// //                               mainAxisAlignment: MainAxisAlignment.start,
// //                               crossAxisAlignment: CrossAxisAlignment.center,
// //                               children: [
// //                                 Text(
// //                                   '$containerText',
// //                                   style: TextStyle(
// //                                     color: Color(0xFF828282),
// //                                     fontSize: 13,
// //                                     fontFamily: 'Inter',
// //                                     fontWeight: FontWeight.w500,
// //                                     height: 0.12,
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: ShapeDecoration(
// //                             shape: RoundedRectangleBorder(
// //                                 borderRadius: BorderRadius.circular(7)),
// //                           ),
// //                           child: Row(
// //                             mainAxisSize: MainAxisSize.min,
// //                             mainAxisAlignment: MainAxisAlignment.center,
// //                             crossAxisAlignment: CrossAxisAlignment.center,
// //                             children: [
// //                               Container(
// //                                 decoration: ShapeDecoration(
// //                                   shape: RoundedRectangleBorder(
// //                                       borderRadius: BorderRadius.circular(7)),
// //                                 ),
// //                                 child: Row(
// //                                   mainAxisSize: MainAxisSize.min,
// //                                   mainAxisAlignment: MainAxisAlignment.center,
// //                                   crossAxisAlignment: CrossAxisAlignment.center,
// //                                   children: [
// //                                     Container(
// //                                       width: 16,
// //                                       height: 16,
// //                                       clipBehavior: Clip.antiAlias,
// //                                       decoration: BoxDecoration(),
// //                                       child: Stack(children: []),
// //                                     ),
// //                                     const SizedBox(width: 12),
// //                                     Container(
// //                                       width: 16,
// //                                       height: 16,
// //                                       clipBehavior: Clip.antiAlias,
// //                                       decoration: BoxDecoration(),
// //                                       child: Stack(children: []),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
