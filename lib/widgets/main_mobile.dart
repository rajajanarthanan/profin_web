import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenHeight = screenSize.height;

    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          color: CustomColor.scaffoldBg,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.asset(
              //   "assets/frontimage.png",
              // ),
              const SizedBox(height: 10),
              //intro txt
              Flexible(
                // Use Flexible for flexible text size
                child: const Text(
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
              Flexible(
                // Use Flexible for flexible button size
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get the App"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
