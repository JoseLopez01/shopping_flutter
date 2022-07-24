import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/on_boarding_screen.dart';
import 'screens/product_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: 'on_boarding_screen',
      routes: {
        'on_boarding_screen': (_) => const OnBoardingScreen(),
        'home_screen': (_) => const HomeScreen(),
        'product_screen': (_) => const ProductScreen(),
      },
    );
  }
}
