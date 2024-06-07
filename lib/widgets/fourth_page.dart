import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profinix_tech/constants/colors.dart';
import 'package:profinix_tech/utils/fourthpage_utils.dart';

class FourthPageWidget extends StatelessWidget {
  const FourthPageWidget({
    super.key,
    required this.fourth,
  });
  final FourthUtils fourth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        children: [
          //icon
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              //padding: EdgeInsets.only(double top=10.0),
              height: 60,
              width: 60,
              child: Image.asset(
                fourth.icon,
                fit: BoxFit.contain,
              ),
            ),
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 15, 12),
            child: Text(
              fourth.title,
              style: const TextStyle(
                fontSize: 20,
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center, // align text to the center
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              fourth.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
                //fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.justify, // align text as justified
            ),
          ),
        ],
      ),
    );
  }
}
