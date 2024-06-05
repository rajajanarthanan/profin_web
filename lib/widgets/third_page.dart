// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pr_web_test/constants/colors.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          const Text(
            "Why Whatsapp Marketing? ",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 500,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColor.bgLight2,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "whywat.png",
                    width: 500,
                    height: 500,
                    //fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(width: 20),
              // Add some space between the image and the text
              // Text content on the right side of the image
              Expanded(
                child: Container(
                  height: 500,
                  width: 200,
                  padding: EdgeInsets.all(80.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColor.bgLight2,
                  ),
                  child: Text(
                    "# WhatsApp marketing is a way of promoting businesses and engaging customers using the WhatsApp platform. It offers direct communication, broad reach, and the ability to share a variety of media, making it an effective tool for marketing strategies.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: CustomColor.whitePrimary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
