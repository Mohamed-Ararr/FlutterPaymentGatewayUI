import "package:flutter/material.dart";

import "../../../Core/AppFonts.dart";

class CustomTotalListTile extends StatelessWidget {
  const CustomTotalListTile({super.key, required this.amount});

  final String amount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Total",
        style: AppFonts.font20B500Black,
      ),
      trailing: Text(
        amount,
        style: AppFonts.font20B500Orange,
      ),
    );
  }
}
