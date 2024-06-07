import 'package:flutter/material.dart';
import 'package:profinix_tech/constants/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final TextEditingController emailController = TextEditingController();
    //final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      //appBar: AppBar(
      //title: Text('Login'),
      //),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //title
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            //subtitle
            const Text(
              "Reach Your Customers Instantly with Our WhatsApp Marketing Solutions!",
              style: TextStyle(
                fontSize: 18,
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 35),
            //email
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: CustomColor.bgLight2,
                // contentPadding: ,
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: "profinix@gmail.com",
                hintStyle: const TextStyle(color: CustomColor.scaffoldBg),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            //password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: CustomColor.bgLight2,
                // contentPadding: ,
                prefixIcon: const Icon(Icons.lock_outlined),
                suffix: const Icon(Icons.remove_red_eye_outlined),
                hintText: "at least characters",
                hintStyle: const TextStyle(color: CustomColor.scaffoldBg),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            //forgot password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                fixedSize: const Size(double.maxFinite, 50),
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
