// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pr_web_test/constants/appmenu.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/constants/second_page.dart';
import 'package:pr_web_test/constants/size.dart';
import 'package:pr_web_test/styles/style.dart';
import 'package:pr_web_test/widgets/drawer_mobile.dart';
import 'package:pr_web_test/widgets/header_desktop.dart';
import 'package:pr_web_test/widgets/header_mobile.dart';
import 'package:pr_web_test/widgets/main_desktop.dart';
import 'package:pr_web_test/widgets/main_mobile.dart';
import 'package:pr_web_test/widgets/second_desktop.dart';
//import 'package:pr_web_test/widgets/sample_second_desktop.dart';
import 'package:pr_web_test/widgets/second_mobile.dart';
import 'package:pr_web_test/widgets/web_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
              : const DrawerMobile(), //null--> we no need drawer menu on desktop else the mobile view will display
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //home
              if (constraints.maxWidth >=
                  kMinDesktopWidth) //screen size max or min
                const HeaderDesktop()
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
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    const Text(
                      "Why Whatsapp Marketing? ",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 280,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: CustomColor.bgLight2,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "whywhatsappmarketing.png",
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                            width:
                                16), // Add some space between the image and the text
                        // Text content on the right side of the image
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "WhatsApp marketing is a way of promoting businesses \nand engaging customers using the WhatsApp platform. \nIt offers direct communication, broad reach, and \nthe ability to share a variety of media, making it an effective tool for \nmarketing strategies.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: CustomColor.whitePrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //getapp
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.amber[200],
              ),
            ],
          ),
        );
      },
    );
  }
}
