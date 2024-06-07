import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pr_web_test/constants/colors.dart';
//import 'package:pr_web_test/constants/shopping_package.dart';
import 'package:pr_web_test/model/shoppingcart_model.dart';
import 'package:pr_web_test/pages/cart_page.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgLight1, // Change the background color here

      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CartPage();
        })),
        backgroundColor: CustomColor.scaffoldBg,
        child: const Icon(Icons.shopping_bag_outlined),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Shop", style: TextStyle(fontSize: 40)),
            ),
            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Explore our premium marketing and extraction tools designed to boost leads and grow your business beyond WhatsApp Marketing.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            //items
            const Divider(
              thickness: 4,
            ),

            const SizedBox(height: 10),
            //grid items

            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ShoppingPackageTile(
                          packageName: value.shopItems[index][0],
                          packagePrice: value.shopItems[index][1],
                          imagePath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                          onPressed: () {
                            Provider.of<CartModel>(context, listen: false)
                                .addItemToCart(index);
                          },
                        ),
                      );
                    },
                    //                    itemCount: value.shopItems.length,

                    //itemCount: 10,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//import 'package:flutter/material.dart';
//import 'package:pr_web_test/constants/colors.dart';

class ShoppingPackageTile extends StatelessWidget {
  final String packageName;
  final String packagePrice;
  final String imagePath;
  final color;

  final VoidCallback onPressed;

  const ShoppingPackageTile({
    required this.packageName,
    required this.packagePrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(imagePath, fit: BoxFit.fill),
          ),
          //const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              packageName,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Price: $packagePrice",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: onPressed,
              child: const Text("Add to Cart",
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
