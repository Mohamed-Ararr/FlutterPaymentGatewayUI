import "package:flutter/material.dart";

import "ProductCard.dart";

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2,
        (index) => const ProductCard(),
      ),
    );
  }
}
