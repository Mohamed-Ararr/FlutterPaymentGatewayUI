import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Core/Custom%20Widgets/CustomButton.dart";
import "package:flutter_application_2/Features/Payment%20View/SubWidgets/PaymentMethodsListView.dart";

import "CustomCardPaymentBody.dart";

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({super.key});

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Payment Detail"),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: PaymentMethodsListView()),
          SliverToBoxAdapter(
              child: CustomCardPaymentBody(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          )),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: kMarginAll16,
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                title: "Confirm Payment",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    completedPaymentPopUp(context).show();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
