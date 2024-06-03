import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';
//import 'package:flutter/animation.dart';

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  _MainDesktopState createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop> {
  // ignore: unused_field
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Start the animation after the widget builds
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

//class MainDesktop extends StatelessWidget {
  //const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                " Break Through the noise,\n Stand Out in the Inbox !",
                style: TextStyle(
                  fontSize: 25.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
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
                    )),
              ),
            ],
          ),
          Image.asset(
            "assets/frontimage.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
