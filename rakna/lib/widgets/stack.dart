import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(blurRadius: 40, spreadRadius: 0, offset: Offset(10, 10))
          ]),
        ),
        Positioned(
            right: 10,
            top: 100,
            child: Image.asset(
              'assets/page-1/images/subtract.png',
              height: 100,
              width: 100,
            ))
      ],
    );
  }
}
