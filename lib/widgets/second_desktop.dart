import 'package:flutter/material.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/constants/second_page.dart';

class SecondDesktop extends StatelessWidget {
  const SecondDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemsPerRow = 3;
    int numberOfRows = (platformItems.length / itemsPerRow).ceil();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        for (int rowIndex = 0; rowIndex < numberOfRows; rowIndex++)
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = rowIndex * itemsPerRow;
                  i < (rowIndex + 1) * itemsPerRow && i < platformItems.length;
                  i++)
                Container(
                  margin: const EdgeInsets.all(8.0),
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 30,
                    ),
                    title: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.max,
                      //children: [
                      //Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //children: [
                      //Image.asset(
                      //platformItems[i]["img"],
                      //width: 26,
                      //),
                      //],
                      //),
                      //const SizedBox(height: 5),
                      //Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          platformItems[i]["title"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          platformItems[i]["description"],
                          overflow: TextOverflow.clip,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
      ],
    );
  }
}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 26,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          platformItems[i]["title"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          platformItems[i]["description"],
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
*/