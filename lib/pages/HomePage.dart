import 'package:flutter/material.dart';
import 'package:rappi_app/pages/cart_page.dart';
import 'package:rappi_app/pages/shop_pages.dart';
import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyBottomNavBar(
        ontabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    color: const Color.fromRGBO(255, 68, 31, 1),
                  ),
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          )),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(255, 68, 31, 1),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: DrawerHeader(
                        child: Image.asset('lib/images/logo_rappi.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title:
                          Text('Inicio', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text('Información',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text('Salir', style: TextStyle(color: Colors.white)),
                ),
              ),
            ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
