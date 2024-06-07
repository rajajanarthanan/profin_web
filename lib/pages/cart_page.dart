//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:profinix_tech/constants/colors.dart';
import 'package:profinix_tech/model/shoppingcart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          // Check for null value
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: CustomColor.scaffoldBg,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            value.cartItems[index][2],
                            height: 30,
                          ),
                          title: Text(value.cartItems[index][0]),
                          subtitle: Text(
                            'Rs. ${value.cartItems[index][1]}',
                            // ^ Corrected here
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () => Provider.of<CartModel>(
                              context,
                              listen: false,
                            ).removeItemFromCart(index),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Total
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: CustomColor.scaffoldBg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total Price",
                            style: TextStyle(
                              fontSize: 20,
                              color: CustomColor.whitePrimary,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Rs. ${value.calculateTotal()}',
                            // ^ Corrected here
                            style: const TextStyle(
                              color: CustomColor.whiteSecondary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      //Pay now
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: CustomColor.whiteSecondary),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: const Row(
                          children: [
                            Text(
                              "Pay Now",
                              style: TextStyle(
                                color: CustomColor.whiteSecondary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                              color: CustomColor.whitePrimary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
