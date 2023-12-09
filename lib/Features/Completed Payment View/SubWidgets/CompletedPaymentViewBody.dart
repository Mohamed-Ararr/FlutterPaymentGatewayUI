import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Core/AppFonts.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/CustomDivider.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/CustomTotalListTile.dart";

import "../../../Core/AppColors.dart";

class CompletedPaymentViewBody extends StatelessWidget {
  const CompletedPaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Transaction Detail",
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: kBr8,
          color: Color.fromARGB(255, 216, 216, 216),
        ),
        child: Column(
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
                Text("12/09/2023", style: AppFonts.font17B500Black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Time", style: AppFonts.font17B500Black),
                Text("10:15 AM", style: AppFonts.font17B500Black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("To", style: AppFonts.font17B500Black),
                Text("Sam Louis", style: AppFonts.font17B500Black),
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
                title: Text("Credit Card", style: AppFonts.font17B500Black),
                subtitle:
                    Text("Master Card **79", style: AppFonts.font13LightGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
