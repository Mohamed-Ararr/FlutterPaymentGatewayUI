import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/CustomDivider.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/PriceDiscountShippingCard.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/ProceedPaymentButton.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/ProductsList.dart";

import "../../../Core/AppColors.dart";
import 'CustomTotalListTile.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "My Cart",
          style: TextStyle(
            color: AppColors.blackColor,
          ),
        ),
        centerTitle: true,
      ),
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
