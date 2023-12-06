import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Core/AppColors.dart";
import "package:flutter_application_2/Features/Payment%20View/SubWidgets/PaymentMethodsListView.dart";

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Payment Detail",
        backButton: BackButton(color: AppColors.blackColor),
      ),
      body: Padding(
        padding: kPaddingH15V12,
        child: Column(
          children: [
            PaymentMethodsListView(),
          ],
        ),
      ),
    );
  }
}
