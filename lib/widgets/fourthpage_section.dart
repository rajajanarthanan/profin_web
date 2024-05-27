import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/utils/fourthpage_utils.dart';
import 'package:pr_web_test/widgets/fourth_page.dart';

class FourthpageSection extends StatelessWidget {
  const FourthpageSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 1300,
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //fourthpage title
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Extensive Features",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          const SizedBox(height: 50),
          //fourthpage card
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 50,
              runSpacing: 50,
              children: [
                for (int i = 0; i < fourthPageUtils.length; i++)
                  FourthPageWidget(
                    fourth: fourthPageUtils[i],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
