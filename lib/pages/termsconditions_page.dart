import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:profinix_tech/constants/colors.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.bgLight1,
        title: const Text('Terms and Conditions'),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/terms_conditions_page.md'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              color: CustomColor.bgLight1,
              padding: const EdgeInsets.all(12.0),
              child: Markdown(
                  data: snapshot.data ?? '',
                  styleSheet: MarkdownStyleSheet(
                    p: const TextStyle(
                        fontSize: 16, color: CustomColor.whitePrimary),
                    h1: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  )),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
