import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profinix_tech/constants/colors.dart';

class ShoppingPackageTile extends StatelessWidget {
  final String packageName;
  final String packagePrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  ShoppingPackageTile({
    super.key,
    required this.packageName,
    required this.packagePrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: CustomColor.bgLight1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //image
                Image.asset(
                  imagePath,
                  height: 300,
                  width: 300,
                ),

                //package

                Text(packageName),

                //price
                MaterialButton(
                    onPressed: () {},
                    color: CustomColor.whiteSecondary,
                    child: Text('Rs.$packagePrice',
                        style: const TextStyle(
                          color: CustomColor.scaffoldBg,
                          fontSize: 25,
                        )))
              ])),
    );
  }
}
