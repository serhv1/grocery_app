import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale

  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ['Avocado', '3.0', "lib/images/avocado.png", Colors.green],
    ['Banana', '5.0', "lib/images/banan.png", Colors.yellow],
    ['Blueberry', '7.0', "lib/images/blue.png", Colors.blue],
    ['Strawberry', '8.0', "lib/images/straw.png", Colors.pink],
  ];

  // list of cart items

  final List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // add item to cart

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item form a cart

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  // calc total price (try the fold method!)

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
