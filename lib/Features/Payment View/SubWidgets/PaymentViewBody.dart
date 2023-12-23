import "package:flutter/material.dart";

import "../../../ConstValues.dart";
import "../../../Core/Custom Widgets/CustomButton.dart";
import "CustomCardPaymentBody.dart";
import "PaymentMethodsListView.dart";

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
