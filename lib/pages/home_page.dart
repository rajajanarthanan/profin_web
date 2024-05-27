// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pr_web_test/constants/appmenu.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/constants/second_page.dart';
import 'package:pr_web_test/constants/size.dart';
import 'package:pr_web_test/constants/sns_links.dart';
import 'package:pr_web_test/styles/style.dart';
import 'package:pr_web_test/utils/fourthpage_utils.dart';
import 'package:pr_web_test/widgets/contact_page.dart';
import 'package:pr_web_test/widgets/custom_textfield.dart';
import 'package:pr_web_test/widgets/drawer_mobile.dart';
import 'package:pr_web_test/widgets/footer.dart';
import 'package:pr_web_test/widgets/fourth_page.dart';
import 'package:pr_web_test/widgets/fourthpage_section.dart';
import 'package:pr_web_test/widgets/header_desktop.dart';
import 'package:pr_web_test/widgets/header_mobile.dart';
import 'package:pr_web_test/widgets/main_desktop.dart';
import 'package:pr_web_test/widgets/main_mobile.dart';
import 'package:pr_web_test/widgets/second_desktop.dart';
//import 'package:pr_web_test/widgets/sample_second_desktop.dart';
import 'package:pr_web_test/widgets/second_mobile.dart';
import 'package:pr_web_test/widgets/third_page.dart';
import 'package:pr_web_test/widgets/web_logo.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(2, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
        //LObuilder passes the parameters and constraints contains the infor of screensize
        builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(
                onNavItemTap: (int navIndex) {
                  // function call
                  scaffoldKey.currentState?.closeEndDrawer();

                  scrollToSection(navIndex);
                },
              ), //null--> we no need drawer menu on desktop else the mobile view will display
        body: SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first), //if tap on the home button
              //home
              if (constraints.maxWidth >=
                  kMinDesktopWidth) //screen size max or min
                HeaderDesktop(onNavMenuTap: (int navIndex) {
                  //call function
                  scrollToSection(navIndex);
                })
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                MainMobile(),

              //second page
              Container(
                //height: 500,
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
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SecondDesktop()
                    else
                      const SecondMobile(),
                  ],
                ),
              ),

              //thirdpage
              ThirdPage(),
              //end of third page
              SizedBox(height: 20),
              //fourthpage
              const FourthpageSection(),

              const SizedBox(height: 30),

              //last page
              Container(
                height: 800,
                //width: double.maxFinite,
                color: Colors.blueGrey,

                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    const Text(
                      "Works All Over the World ",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "newworld.png",
                                  width: 800,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ],
                ),
              ),
              //contact
              const SizedBox(height: 20),
              ContactPage(
                key: navbarKeys[1],
              ),
              //footer
              Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 2) {
      // open join us
      js.context.callMethod('open', [SnsLinks.joinus]);

      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!, //shouldnot null
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
