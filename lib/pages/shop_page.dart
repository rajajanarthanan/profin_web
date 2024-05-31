import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pr_web_test/constants/colors.dart';
import 'package:pr_web_test/constants/shopping_package.dart';
import 'package:pr_web_test/model/shoppingcart_model.dart';
import 'package:pr_web_test/pages/cart_page.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CartPage();
        })),
        backgroundColor: CustomColor.yellowPrimary,
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
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: (context, index) {
                      return ShoppingPackageTile(
                        packageName: value.shopItems[index][0],
                        packagePrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index);
                        },
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
