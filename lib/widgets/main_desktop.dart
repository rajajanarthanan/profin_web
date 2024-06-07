import 'package:flutter/material.dart';
import 'package:profinix_tech/constants/colors.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  _MainDesktopState createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop>
    with SingleTickerProviderStateMixin {
  final List<String> quotes = [
    "Break Through the noise,\nStand Out in the Inbox!",
    "Reach your customers \ndirectly on WhatsApp.",
    "Boost your engagement \nwith personalized messages."
  ];

  int _currentQuoteIndex = 0;
  late AnimationController _controller;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _bounceAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            _currentQuoteIndex = (_currentQuoteIndex + 1) % quotes.length;
          });
          _controller.reset();
          _controller.forward();
        });
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizeTransition(
                sizeFactor: _bounceAnimation,
                axis: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, left: 60.0),
                  child: Text(
                    quotes[_currentQuoteIndex],
                    style: const TextStyle(
                      fontSize: 35.0,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: SizedBox(
                  width: 250,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Get the App",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            width: screenWidth / 2,
            child: Image.asset("assets/marketingfront.png"),
          ),
        ],
      ),
    );
  }
}
