import 'package:flutter/material.dart';
import 'package:pr_web_test/model/shoppingcart_model.dart';
import 'package:pr_web_test/pages/home_page.dart';
import 'package:pr_web_test/pages/login_page.dart';
import 'package:pr_web_test/pages/shopping_page.dart';
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
        //theme: ThemeData.dark(),
        // title: 'Profinix',
        initialRoute: '/home', // Set the initial route to the login page
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/shopping': (context) => const ShoppingPage(),
        },
      ),
    );
  }
}
