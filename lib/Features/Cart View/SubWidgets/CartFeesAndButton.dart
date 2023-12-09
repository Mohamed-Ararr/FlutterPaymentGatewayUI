import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../../Core/AppRouter.dart";
import "../../../Core/Custom Widgets/CustomButton.dart";
import "CustomDivider.dart";
import "CustomTotalListTile.dart";
import "PriceDiscountShippingCard.dart";

class CartFeesAndButton extends StatelessWidget {
  const CartFeesAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const PriceDiscountShippingCard(),
        const CustomDivider(),
        const CustomTotalListTile(amount: "95\$"),
        CustomButton(
          title: "Proceed Payment",
          onPressed: () {
            GoRouter.of(context).push(AppRouter.paymentView);
          },
        ),
      ],
    );
  }
}
