import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Why Whatsapp Marketing?",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              width: screenWidth - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomColor.bgLight2,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Text(
                    "# WhatsApp marketing is a way of promoting businesses \nand engaging customers using the WhatsApp platform. \nIt offers direct communication, broad reach, and the ability \nto share a variety of media, making it an effective tool \nfor marketing strategies.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: CustomColor.whitePrimary,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 250,
            width: screenWidth - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColor.bgLight2,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ".png",
                width: screenWidth - 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
