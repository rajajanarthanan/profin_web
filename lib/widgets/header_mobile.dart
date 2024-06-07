import 'package:flutter/material.dart';
import 'package:profinix_tech/constants/colors.dart';
import 'package:profinix_tech/styles/style.dart';

import 'web_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile(
      {super.key, this.onLogoTap, this.onMenuTap}); //vscode extensions
  //methods
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          GestureDetector(
            onTap: onLogoTap,
            child: const Text(
              "Profinix Technologies",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          //WebLogo(onTap: () {}),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu, color: CustomColor.whitePrimary),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
