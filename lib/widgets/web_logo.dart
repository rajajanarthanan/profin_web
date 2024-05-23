import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';

class WebLogo extends StatelessWidget {
  const WebLogo({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Profinix Technologies",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowSecondary,
        ),
      ),
    );
  }
}
