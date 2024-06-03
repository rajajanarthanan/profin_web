import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';

class ThirdPageMobile extends StatelessWidget {
  const ThirdPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Why WhatsApp Marketing?",
              style: TextStyle(
                fontSize: 28, // Adjusted font size for mobile
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              width: screenWidth - 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomColor.bgLight2,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "why.png",
                  width: screenWidth - 32,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: screenWidth - 32,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomColor.bgLight2,
              ),
              child: const Text(
                "# WhatsApp marketing is a way of promoting businesses \nand engaging customers using the WhatsApp platform. \nIt offers direct communication, broad reach, and the ability \nto share a variety of media, making it an effective tool \nfor marketing strategies.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: CustomColor.whitePrimary,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
