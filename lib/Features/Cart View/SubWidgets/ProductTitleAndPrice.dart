import "package:flutter/material.dart";
import "package:flutter_application_2/Core/AppFonts.dart";

import "../../../Core/AppColors.dart";

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Xbox headphone",
            style: AppFonts.font17B500Black,
          ),
          const SizedBox(height: 8),
          Text(
            "Xbox Incs",
            style: AppFonts.font13LightGrey,
          ),
          const SizedBox(height: 8),
          Text(
            "28.56 \$",
            style: AppFonts.font17B500Orange,
          ),
        ],
      ),
    );
  }
}
