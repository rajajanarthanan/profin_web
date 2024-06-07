import 'package:flutter/material.dart';
import 'package:profinix_tech/model/shoppingcart_model.dart';
import 'package:profinix_tech/pages/home_page.dart';
import 'package:profinix_tech/pages/login_page.dart';
import 'package:profinix_tech/pages/shopping_homepage.dart';
import 'package:profinix_tech/widgets/contact_page.dart';
import 'package:profinix_tech/pages/privacy_policy_page.dart';
import 'package:profinix_tech/pages/termsconditions_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'Profinix Technologies',
        initialRoute: '/home', // Set the initial route to the login page
        routes: {
          '/home': (context) => const HomePage(),
          '/contactus': (context) => const ContactPage(),
          '/joinus': (context) => const LoginPage(),
          '/shoppinghomepage': (context) => const ShoppingPage(),
          '/termsandconditions': (context) => const TermsConditionsPage(),
          '/privacypolicy': (context) => const PrivacyPolicyPage(),
        },
        //routes for drawer
      ),
    );
  }
}
