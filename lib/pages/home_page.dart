// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/constants/size.dart';
import 'package:pr_web_test/widgets/contact_page.dart';
import 'package:pr_web_test/widgets/drawer_mobile.dart';
import 'package:pr_web_test/widgets/footer.dart';
import 'package:pr_web_test/widgets/fourthpage_section.dart';
//import 'package:pr_web_test/widgets/fourthpage_section.dart';
import 'package:pr_web_test/widgets/header_desktop.dart';
import 'package:pr_web_test/widgets/header_mobile.dart';
import 'package:pr_web_test/widgets/main_desktop.dart';
import 'package:pr_web_test/widgets/main_mobile.dart';
import 'package:pr_web_test/widgets/second_desktop.dart';
import 'package:pr_web_test/widgets/second_mobile.dart';
import 'package:pr_web_test/widgets/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: MediaQuery.of(context).size.width >= kMinDesktopWidth
          ? null
          : DrawerMobile(
              onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                if (navIndex == 1) {
                  Navigator.pushNamed(context, '/shoppinghomepage');
                } else {
                  scrollToSection(navIndex);
                }
              },
            ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HeaderDesktop(
          onNavMenuTap: (int navIndex) {
            if (navIndex == 3) {
              Navigator.pushNamed(context, '/shoppinghomepage');
            } else {
              scrollToSection(navIndex);
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(key: navbarKeys.first),
            MainDesktop(),
            Container(
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: CustomColor.bgLight1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Main Features",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50),
                  MediaQuery.of(context).size.width >= kMedDesktopWidth
                      ? SecondDesktop()
                      : SecondMobile(),
                ],
              ),
            ),
            ThirdPage(),
            SizedBox(height: 20),
            const FourthpageSection(),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              color: CustomColor.bgLight1,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              child: Column(
                children: [
                  const Text(
                    "Works All Over the World",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Image.asset(
                      "newworld.png",
                      width: screenWidth * 0.8,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ContactPage(
              key: navbarKeys[1],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 2) {
      Navigator.pushNamed(context, '/joinus');
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
