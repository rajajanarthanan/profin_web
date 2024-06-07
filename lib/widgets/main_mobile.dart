import 'package:flutter/material.dart';
import 'package:profinix_tech/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        color: CustomColor.scaffoldBg,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Uncomment and adjust the image size as needed
            // Image.asset(
            //   "assets/frontimage.png",
            //   width: screenWidth, // Adjust image width
            //   fit: BoxFit.contain,
            // ),
            const SizedBox(height: 10),
            const Flexible(
              child: Text(
                "Break Through the noise\n Stand Out in the Inbox",
                style: TextStyle(
                  fontSize: 20.0, // Adjust font size as needed
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Get the App"),
            ),
            const SizedBox(height: 10), // Adjust spacing as needed
          ],
        ),
      ),
    );
  }
}
