import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/appmenu.dart';
import 'package:pr_web_test/constants/colors.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(); //to close the side bar
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              titleTextStyle: const TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {
                void _onNavItemTap(int index) {
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(context, '/home');
                      break;
                    case 1:
                      Navigator.pushNamed(context, '/contact');
                      break;
                    case 2:
                      Navigator.pushNamed(context, '/joinus');
                      break;
                    case 3:
                      Navigator.pushNamed(context, '/shoppinghomepage');
                      break;
                    default:
                      break;
                  }
                }
              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            ) //for list view we can use for loop
        ],
      ),
    );
  }
}
