import "package:awesome_dialog/awesome_dialog.dart";
import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Core/AppColors.dart";
import "package:flutter_application_2/Core/AppRouter.dart";
import "package:flutter_application_2/Core/Custom%20Widgets/CustomButton.dart";
import "package:flutter_application_2/Features/Payment%20View/SubWidgets/PaymentMethodsListView.dart";
import "package:go_router/go_router.dart";

import "../../../Core/AppFonts.dart";
import "../../Cart View/SubWidgets/CustomDivider.dart";
import "../../Cart View/SubWidgets/CustomTotalListTile.dart";
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
                    // GoRouter.of(context).push(AppRouter.completedPaymentView);
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      dialogBackgroundColor: Color.fromARGB(255, 216, 216, 216),
                      body: Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Thank You!", style: AppFonts.font20B500Black),
                            const SizedBox(height: 5),
                            Text(
                              "Successfully Transfered",
                              style: AppFonts.font17Black,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date", style: AppFonts.font17B500Black),
                                Text("12/09/2023",
                                    style: AppFonts.font17B500Black),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Time", style: AppFonts.font17B500Black),
                                Text("10:15 AM",
                                    style: AppFonts.font17B500Black),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("To", style: AppFonts.font17B500Black),
                                Text("Sam Louis",
                                    style: AppFonts.font17B500Black),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const CustomDivider(),
                            const SizedBox(height: 20),
                            const CustomTotalListTile(amount: "50\$"),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: kBr8,
                              ),
                              child: ListTile(
                                leading: Icon(
                                  Icons.credit_card,
                                  color: AppColors.orangeColor,
                                  size: 35,
                                ),
                                title: Text("Credit Card",
                                    style: AppFonts.font17B500Black),
                                subtitle: Text("Master Card **79",
                                    style: AppFonts.font13LightGrey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).show();
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
