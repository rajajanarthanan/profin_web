import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      //for mobile
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/first.png",
          ),
          const SizedBox(height: 30),
          //intro txt
          const Text(
            "Break Through the noise\n Stand Out in the Inbox",
            style: TextStyle(
              fontSize: 30.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200.0,
            height: 20,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get the App"),
            ),
          )

          //btn
        ],
      ),
    );
  }
}
