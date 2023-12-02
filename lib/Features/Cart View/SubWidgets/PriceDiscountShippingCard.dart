import "package:flutter/material.dart";

import "CustomListTitle.dart";

class PriceDiscountShippingCard extends StatelessWidget {
  const PriceDiscountShippingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomListTile(title: "Price", amount: "90\$"),
        CustomListTile(title: "Discount", amount: "90\$"),
        CustomListTile(title: "Shipping", amount: "90\$"),
      ],
    );
  }
}
