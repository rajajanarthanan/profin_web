import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';

class WebLogo extends StatelessWidget {
  const WebLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            'assets/logo/Profinix.png', // Replace with the correct path to your logo
            height: 50,
            //width: 100, // Set the desired height for your logo
          ),
          const SizedBox(width: 10), // Add some space between the logo and text
          const Text(
            "PRofinix Technologies",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              //decoration: TextDecoration.underline,
              color: CustomColor.whitePrimary,
            ),
            overflow: TextOverflow.ellipsis, // Handle text overflow
          ),
        ],
      ),
    );
  }
}
