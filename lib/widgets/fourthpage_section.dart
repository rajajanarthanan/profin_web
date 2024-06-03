import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/utils/fourthpage_utils.dart';
import 'package:pr_web_test/widgets/fourth_page.dart';

class FourthpageSection extends StatelessWidget {
  const FourthpageSection({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      //height: 500,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          const SizedBox(height: 20),
          //fourthpage card
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              for (final fourth in fourthPageUtils)
                Container(
                  width: screenWidth < 600 ? screenWidth - 40 : 400,
                  child: FourthPageWidget(fourth: fourth),
                ),
            ],
          )
        ],
      ),
    );
  }
}
