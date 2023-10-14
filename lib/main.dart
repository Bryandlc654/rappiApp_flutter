import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rappi_app/models/cart.dart';
import 'pages/IntroPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
        ));
  }
}
