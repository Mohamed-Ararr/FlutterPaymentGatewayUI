import "package:flutter/material.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/ProductCard.dart";

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) => const ProductCard(),
      ),
    );
  }
}
