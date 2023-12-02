import "package:flutter/material.dart";

import "../../../ConstValues.dart";
import "../../../Core/AppColors.dart";

class CustomAddOrMinusProductQuanitity extends StatelessWidget {
  const CustomAddOrMinusProductQuanitity({super.key, this.icon});

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAll1AndHalf,
      decoration: BoxDecoration(
        color: AppColors.lightOrangeColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(5),
        child: Icon(
          icon,
          size: 15,
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}
