import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes
  List<Shoe> shoes = [
    Shoe(
        name: "Air Jordan",
        price: "200",
        imagePath: "lib/images/nike1.webp",
        description: "Best Jordans for Basketball!"),
    Shoe(
        name: "Dunk Low",
        price: "160",
        imagePath: "lib/images/nike2.webp",
        description: "Best Dunk for Football!"),
    Shoe(
        name: "Nike Swoosh 1",
        price: "300",
        imagePath: "lib/images/nike3.webp",
        description: "Best and only version!"),
    Shoe(
        name: "Dynamo GO SE",
        price: "250",
        imagePath: "lib/images/nike4.webp",
        description: "Small and lighter version of the original Dynamo!"),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> shoeShop = [];

  // get shoe list
  List<Shoe> getShoeList() {
    return this.shoes;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe item) {
    userCart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeItemToCart(Shoe item) {
    userCart.remove(item);
    notifyListeners();
  }
}
