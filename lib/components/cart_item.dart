import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rappi_app/models/cart.dart';
import 'package:rappi_app/models/product.dart';

class CartItem extends StatefulWidget {
  final Product product;

  const CartItem({Key? key, required this.product}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false)
        .removeItemFromCart(widget.product);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.product.imagePath),
        title: Text(widget.product.name),
        subtitle: Text(widget.product.price),
        trailing:
            IconButton(icon: Icon(Icons.delete), onPressed: removeItemFromCart),
      ),
    );
  }
}
