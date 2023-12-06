import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/CustomDivider.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/PriceDiscountShippingCard.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/ProceedPaymentButton.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/ProductsList.dart";

import 'CustomTotalListTile.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: kPaddingLR20B10,
          child: Column(
            children: const [
              ProductsList(),
              PriceDiscountShippingCard(),
              CustomDivider(),
              CustomTotalListTile(amount: "95\$"),
              SizedBox(height: 10),
              ProceedPaymentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
