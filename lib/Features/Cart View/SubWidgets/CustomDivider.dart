import "package:flutter/material.dart";

import "../../../Core/AppColors.dart";

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.greyColor,
      endIndent: 40,
      indent: 40,
      thickness: 0.7,
    );
  }
}
