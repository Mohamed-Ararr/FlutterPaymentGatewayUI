import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Core/AppColors.dart";

import "PaymentMethodItem.dart";

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          2,
          (index) => InkWell(
            onTap: () {
              selectedItem = index;
              setState(() {});
            },
            child: PaymentMethodItem(
              isActive: selectedItem == index,
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
