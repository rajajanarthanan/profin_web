import 'package:flutter/material.dart';
import 'package:pr_web_test/styles/style.dart';

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
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          WebLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
