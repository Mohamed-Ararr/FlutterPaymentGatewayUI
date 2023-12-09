import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Core/AppColors.dart";
import "package:flutter_application_2/Core/Custom%20Widgets/CustomButton.dart";
import "package:flutter_application_2/Features/Payment%20View/SubWidgets/PaymentMethodsListView.dart";

import "CustomCardPaymentBody.dart";

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Payment Detail",
        backButton: BackButton(color: AppColors.blackColor),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: PaymentMethodsListView()),
          const SliverToBoxAdapter(child: CustomCardPaymentBody()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: kMarginAll16,
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                title: "Confirm Payment",
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
