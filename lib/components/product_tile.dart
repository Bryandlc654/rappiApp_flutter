import 'package:flutter/material.dart';
import 'package:rappi_app/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final void Function()? onTap;

  const ProductTile({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(product.imagePath)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              product.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 5),
                    Text('S/' + product.price,
                        style: const TextStyle(
                          color: Colors.grey,
                        )),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 68, 31, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
