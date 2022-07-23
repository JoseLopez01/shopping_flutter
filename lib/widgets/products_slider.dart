import 'package:flutter/material.dart';

import 'product_card.dart';

class ProductsSlider extends StatelessWidget {
  const ProductsSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 232,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, __) {
          return const ProductCard();
        },
      ),
    );
  }
}
