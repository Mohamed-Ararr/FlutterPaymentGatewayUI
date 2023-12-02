import "package:flutter/material.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/CustomAddOrMinusProductQuanitity.dart";

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CustomAddOrMinusProductQuanitity(icon: Icons.add),
        SizedBox(height: 8),
        Text("1"),
        SizedBox(height: 8),
        CustomAddOrMinusProductQuanitity(icon: Icons.remove),
      ],
    );
  }
}
