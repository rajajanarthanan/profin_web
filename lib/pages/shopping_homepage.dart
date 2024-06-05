import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/pages/shop_page.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 70, right: 70, bottom: 70, top: 80),
              child: Image.asset(
                'assets/shopping/shopage.png',
                width: 250,
                height: 250,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Discover our comprehensive WhatsApp marketing packages designed to elevate your business communications. Browse, compare, and choose the perfect plan to engage your audience effectively and drive growth.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ShopPage();
                  },
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.bgLight2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: const Size(200, 50),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
