import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/product.dart';
import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Carrito',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Product individualProduct = value.getUserCart()[index];

                  return CartItem(product: individualProduct);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
