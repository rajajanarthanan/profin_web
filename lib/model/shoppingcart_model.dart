import 'package:flutter/material.dart';
import 'package:profinix_tech/constants/colors.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale

  final List _shopItems = [
    //package name, price, imagepath

    [
      "Whatsapp Super Filter",
      "16,000",
      "assets/shopping/wam_superfilter.png",
      Colors.blue[400]
    ],
    [
      "Whatsapp Filter Single PC",
      "10,000",
      "assets/shopping/wam_singlePC.png",
      Colors.blue[300]
    ],
    [
      "Google Data Extractor",
      "10,000",
      "assets/shopping/wam_googleextractor.png",
      CustomColor.bgLight2
    ],
    [
      "Instagram Bot Pro",
      "10,000",
      "assets/shopping/wam_instabot.png",
      CustomColor.bgLight2
    ]
  ];

  //list of cart

  final List _cartItems = [];
  List get shopItems => _shopItems;
  List get cartItems => _cartItems;

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
    for (var item in _cartItems) {
      String price = item[1].replaceAll(',', '');
      totalPrice += double.parse(price);
    }
    // for (int i = 0; i < _cartItems.length; i++) {
    //   totalPrice += double.parse(_cartItems[i][1]);
    // }
    return totalPrice.toStringAsFixed(2);
  }
}
