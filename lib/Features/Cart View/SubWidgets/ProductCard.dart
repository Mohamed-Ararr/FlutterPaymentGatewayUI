import "package:flutter/material.dart";

import "../../../ConstValues.dart";
import "../../../Core/AppColors.dart";
import "ProductQuantity.dart";
import "ProductTitleAndPrice.dart";

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingH16V12,
      margin: kMarginT10,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.greyShadowColor,
            blurRadius: 3,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
        color: AppColors.whiteColor,
        borderRadius: kBr8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.shop),
          SizedBox(width: 20),
          ProductTitleAndPrice(),
          ProductQuantity(),
        ],
      ),
    );
  }
}
