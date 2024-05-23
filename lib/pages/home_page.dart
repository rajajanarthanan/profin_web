// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/appmenu.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/styles/style.dart';
import 'package:pr_web_test/widgets/drawer_mobile.dart';
import 'package:pr_web_test/widgets/header_desktop.dart';
import 'package:pr_web_test/widgets/header_mobile.dart';
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
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: const DrawerMobile(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //home
          //HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          //joinus
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.amber[200],
          ),
          //exploreourstore
          Container(
            height: 500,
            width: double.maxFinite,
            //color: Colors.amber[200],
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
  }
}
