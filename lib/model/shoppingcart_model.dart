import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale

  final List _shopItems = [
    //package name, price, imagepath

    ["Whatsapp Super Filter", "16,000", "assets/shopping/wam_superfilter.png"],
    ["Whatsapp Filter Single PC", "10,000", "assets/shopping/wam_singlePC.png"],
    [
      "Google Data Extractor",
      "10,000",
      "assets/shopping/wam_googleextractor.png"
    ],
    ["Instagram Bot Pro", "10,000", "assets/shopping/wam_instabot.png"]
  ];

  //list of cart

  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //add item
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //removing
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
