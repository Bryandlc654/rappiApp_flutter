import 'package:flutter/material.dart';
import 'package:rappi_app/models/product.dart';

class Cart extends ChangeNotifier {
  List<Product> productShop = [
    Product(
      name: 'Hamburguesa',
      price: '24',
      imagePath: 'lib/images/hamburguesa.png',
      description: 'La yeka',
    ),
    Product(
      name: 'Shawarma',
      price: '10',
      imagePath: 'lib/images/shawarma.png',
      description: 'Shawarma',
    ),
    Product(
      name: 'Pizza',
      price: '40',
      imagePath: 'lib/images/pizza.png',
      description: 'La Julita',
    ),
    Product(
      name: 'Pollo a la Brasa',
      price: '70',
      imagePath: 'lib/images/pollo.png',
      description: 'Naoky',
    ),
  ];

  List<Product> useCart = [];

  List<Product> getProductList() {
    return productShop;
  }

  List<Product> getUserCart() {
    return useCart;
  }

  void addItemToCart(Product product) {
    useCart.add(product);
    notifyListeners();
  }

  void removeItemFromCart(Product product) {
    if (useCart.contains(product)) {
      useCart.remove(product);
      notifyListeners();
    }
  }
}
