import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rappi_app/components/product_tile.dart';
import 'package:rappi_app/models/product.dart';
import 'package:rappi_app/models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addProductToCart(Product product) {
    Provider.of<Cart>(context, listen: false).addItemToCart(product);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¡Producto agregado!'),
        content: const Text('Revisa el Carrito'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Promociones 🔥',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'Todo',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 68, 31, 1),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Product product = value.getProductList()[index];
                return ProductTile(
                  product: product,
                  onTap: () => addProductToCart(product),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
