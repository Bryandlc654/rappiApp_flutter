import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? ontabChange;

  const MyBottomNavBar({Key? key, required this.ontabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: const Color.fromRGBO(255, 68, 31, 1),
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        gap: 8,
        onTabChange: (value) => ontabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Tienda',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Carrito',
          ),
        ],
      ),
    );
  }
}
