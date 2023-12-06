import 'package:flutter/material.dart';

class CustomPrivacyText extends StatelessWidget {
  const CustomPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364,
      height: 600,
      child: SingleChildScrollView(
        //To Can Scroll Inside Container
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              TextSpan(
                text: '1. ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Proprietary (Closed Source) License:\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'Closed source, users can\'t view or modify the code.\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'Typically involves purchasing a license.\n\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '2. ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Open Source License:\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text:
                    'Source code is freely available for anyone to view and modify.\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text:
                    'Often comes with a copyleft clause, requiring modifications to be shared.\n\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '3. ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Freeware:\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'Free to use but may have usage restrictions.\n\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '4. ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Shareware:\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text:
                    'Trial software with an option to purchase for full use.\n\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '5. ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Commercial License:\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'Purchased for commercial use, terms vary.\n\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '6. ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Creative Commons License:\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '- ',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text:
                    'Used for creative works, specifies permissions for sharing, modification, and commercial use.\n',
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
