import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/constants/second_page.dart';

class SecondMobile extends StatelessWidget {
  const SecondMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(maxWidth: 500.0), //for limitations on the cards
      child: Column(
        children: [
          //platforms
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 26.0,
                ),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
