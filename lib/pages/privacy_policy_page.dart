import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:profinix_tech/constants/colors.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.bgLight1,
        title: const Text('Privacy Policy'),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/privacy_policy.md'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              color: CustomColor.bgLight1,
              padding: const EdgeInsets.all(16.0),
              child: Markdown(
                data: snapshot.data ?? '',
                styleSheet: MarkdownStyleSheet(
                  p: const TextStyle(
                      fontSize: 16, color: CustomColor.whitePrimary),
                  h1: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
