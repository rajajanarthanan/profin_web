import 'package:flutter/material.dart';
import 'package:profinix_tech/constants/colors.dart';
//import 'package:pr_web_test/pages/terms_conditions_page.dart';
//import 'package:pr_web_test/pages/privacy_policy_page.dart';
import 'package:profinix_tech/pages/privacy_policy_page.dart';
import 'package:profinix_tech/pages/termsconditions_page.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "© 2024 Profinix Technologies, Inc.",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: CustomColor.whiteSecondary,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/termsandconditions');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const TermsConditionsPage()),
                  //);
                },
                child: const Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    color: CustomColor.whiteSecondary,
                    decoration: TextDecoration.underline,
                    backgroundColor: CustomColor.bgLight1,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/privacypolicy');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const PrivacyPolicyPage()),
                  // );
                },
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: CustomColor.whiteSecondary,
                    decoration: TextDecoration.underline,
                    backgroundColor: CustomColor.bgLight1,
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
